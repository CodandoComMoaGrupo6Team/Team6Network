//
//  ThemeComponentModel.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

// MARK: - ThemeComponentModel
struct ThemeComponentModel: Codable {
    let themeID: Int
    let theme: ThemeModel
    let name, foregroundColor, backgroundColor, fontName: String
    let fontSize: Int
    let style: String
    let id: Int
    let isInativo: Bool
    let creationDate, changeDate, uid, uidFirebase: String
    let isChanged: Bool
}

struct Exception: Codable {
}

struct CardsModel: Codable {
    let result: ThemeComponentModel
    let resultJSON: String
    let isSucess: Bool
    let message: String
    let exception: Exception
    let stackTrace: String
}
