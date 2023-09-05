//
//  ThemeModel.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

// MARK: - ThemeModel
struct ThemeModel: Codable {
    let name: String?
    let id: Int?
    let isInativo: Bool?
    let creationDate: String?
    let changeDate: String?
    let uid: String?
    let uidFirebase: String?
    let isChanged: Bool?
    
    enum CodingKeys: String, CodingKey {
            case name = "Name"
            case id = "Id"
            case isInativo = "IsInativo"
            case creationDate = "CreationDate"
            case changeDate = "ChangeDate"
            case uid = "Uid"
            case uidFirebase = "UidFirebase"
            case isChanged = "IsChanged"
        }
}
