//
//  ThemeComponentModel.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

// MARK: - ThemeComponentModel
struct ThemeComponentModel: Codable {
    let themeID: Int?
    let theme: ThemeModel?
    let name: String?
    let foregroundColor: String?
    let backgroundColor: String?
    let fontName: String?
    let fontSize: Int?
    let style: String?
    let id: Int?
    let isInativo: Bool?
    let creationDate: String?
    let changeDate: String?
    let uid: String?
    let uidFirebase: String?
    let isChanged: Bool?
    
    enum CodingKeys: String, CodingKey {
            case themeID = "ThemeId"
            case theme = "Theme"
            case name = "Name"
            case foregroundColor = "ForegroundColor"
            case backgroundColor = "BackgroundColor"
            case fontName = "FontName"
            case fontSize = "FontSize"
            case style = "Style"
            case id = "Id"
            case isInativo = "IsInativo"
            case creationDate = "CreationDate"
            case changeDate = "ChangeDate"
            case uid = "Uid"
            case uidFirebase = "UidFirebase"
            case isChanged = "IsChanged"
        }
}
