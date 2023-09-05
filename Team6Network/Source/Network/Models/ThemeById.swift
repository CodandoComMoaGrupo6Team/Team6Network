//
//  ThemeById.swift
//  Team6Network
//
//  Created by Weslley Milani on 04/09/23.
//

import Foundation


// MARK: - Welcome
struct ThemeByIdModel: Codable {
    let resultado2: Result
    let resultJSON: String
    let isSucess: Bool
    let message: String
    let tester: Exception // Alterar o nome da variavel para algo bonito e funcional 
    let stackTrace: String
}

// MARK: - Exception
struct tester: Codable {
}

// MARK: - Result
struct Result: Codable {
    let name: String
    let id: Int
    let isInativo: Bool
    let creationDate, changeDate, uid, uidFirebase: String
    let isChanged: Bool
}
