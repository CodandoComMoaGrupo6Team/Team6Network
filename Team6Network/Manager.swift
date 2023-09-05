//
//  Manager.swift
//  Team6Manager
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

class Manager {
    static let shared = Manager()
    
    private init() { }
    
    public func getComponentById(id: Int, uIdFirebase: String, completionHandler: @escaping (Result<CardsModel, G6Error>) -> Void) {
        
        let urlStr = "\(Constants.urlBase)\(Constants.endPointComponentById)?id=\(id)&uIdFirebase=\(uIdFirebase)"
        
        guard let url = URL(string: urlStr) else {
            completionHandler(.failure(.invalidendPoint))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completionHandler(.failure(.unableToComplete))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completionHandler(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completionHandler(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let themes = try decoder.decode(CardsModel.self, from: data)
                completionHandler(.success(themes))
            } catch {
                completionHandler(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    public func getListaTheme(uIdFirebase: String, completionHandler: @escaping (Result<[ThemeModel], G6Error>) -> Void) {
        
        let urlStr = "\(Constants.urlBase)\(Constants.endPointGetListaTheme)?uIdFirebase=\(uIdFirebase)"
        
        guard let url = URL(string: urlStr) else {
            completionHandler(.failure(.invalidendPoint))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completionHandler(.failure(.unableToComplete))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completionHandler(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completionHandler(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let themes = try decoder.decode([ThemeModel].self, from: data)
                completionHandler(.success(themes))
            } catch {
                completionHandler(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
