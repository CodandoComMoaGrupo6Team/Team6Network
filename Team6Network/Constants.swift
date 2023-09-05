//
//  Constants.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import Foundation

struct Constants {
    
    static let urlBase = "http://mentoria.codandocommoa.com.br"
    static let endPointGetListaTheme = "/Api/Theme/GetListaTheme"
    static let endPointGetThemeById =  "/Api/Theme/GetThemeById"
    static let endPointThemeComponent = "/Api/ThemeComponent/GetListaThemeComponent"
    static let endPointComponentById = "/Api/ThemeComponent/GetThemeComponentById"
    static let uIdFirebase = "CodandoComMoa"
    
}

public enum HTTPRequestMethod: String {
    case get = "GET"
    case post = "POST"
}
