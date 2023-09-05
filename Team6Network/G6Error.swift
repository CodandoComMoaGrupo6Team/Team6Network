//
//  G6Error.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 04/09/23.
//

import Foundation

enum G6Error: String, Error {
    case invalidendPoint = "This endpoint created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalide response from the server. Please try again Error"
    case invalidData = "The data received from the server was invalid, Please try again"
}
