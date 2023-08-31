//
//  ThemeModel.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

// MARK: - ThemeModel
struct ThemeModel: Codable {
    let name: String
    let id: Int
    let isInativo: Bool
    let creationDate, changeDate, uid, uidFirebase: String
    let isChanged: Bool
}
