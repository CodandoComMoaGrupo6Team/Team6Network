//
//  Manager.swift
//  Team6Manager
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

class Manager {
    
    let endPointThemeComponent = "/Api/ThemeComponent/GetListaThemeComponent"
    let endPointComponentById = "/Api/ThemeComponent/GetThemeComponentById"
    
    
    init() {
        
    }
    
    public func getComponentById(id: Int, uIdFirebase: String, completionHandler: @escaping (Result<CardsModel, Error>) -> Void) {
        
        let urlStr = "\(Constants.urlBase)\(endPointComponentById)?id=\(id)&uIdFirebase=\(uIdFirebase)"
        
        guard let url = URL(string: urlStr) else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HTTPRequestMethod.get.rawValue
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                    do {
                        if let error {
                            completionHandler(.failure(error))
                        }
                        if let data {
                            let dataStr = String(data: data, encoding: .utf8)
                            debugPrint(dataStr as Any)

                            if let jsonData = dataStr?.data(using: .utf8) {
                                if jsonData.isEmpty {
                                    completionHandler(.failure(error!))
                                } else {
                                    let result = try JSONDecoder().decode(CardsModel.self, from: jsonData)
                                    completionHandler(.success(result))
                                }
                            }
                        }
                    } catch let error as NSError {
                        completionHandler(.failure(error))
                    }
                }
                task.resume()
}
}
