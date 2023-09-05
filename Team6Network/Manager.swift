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
    
    public func fetchTheme<T: Codable>(url: String) async throws -> T? {
        guard let url = URL(string: url) else { return nil }
        
        let request = URLRequest(url: url )
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let response = try JSONDecoder().decode(T.self, from: data)
        
        return response
    }
}
