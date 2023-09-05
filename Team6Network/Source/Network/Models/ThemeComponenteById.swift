//
//  ThemeComponenteById.swift
//  Team6Network
//
//  Created by Weslley Milani on 04/09/23.
//

import Foundation

// MARK: - Welcome
struct ThemeComponenteById: Codable {
    let resultado: Result
    let resultJSON: String
    let isSucess: Bool
    let message: String
    let teste1: Exception // alterar o nome da variavel para algo que faca sentido, coloquei esse so para sumir os warnings
    let stackTrace: String
}

// MARK: - Exception
struct teste1: Codable { // alterar o nome da classe 
}

// MARK: - Result
struct Resultado: Codable {
    let themeID: Int
    let theme: Theme
    let name, foregroundColor, backgroundColor, fontName: String
    let fontSize: Int
    let style: String
    let id: Int
    let isInativo: Bool
    let creationDate, changeDate, uid, uidFirebase: String
    let isChanged: Bool
}

// MARK: - Theme
struct Theme:Codable {
    let name: String
    let id: Int
    let isInativo: Bool
    let creationDate, changeDate, uid, uidFirebase: String
    let isChanged: Bool
}
