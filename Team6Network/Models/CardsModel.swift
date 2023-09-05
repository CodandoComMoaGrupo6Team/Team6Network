//
//  CardsModel.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 04/09/23.
//

import Foundation

struct CardsModel: Codable {
    let result: ThemeModel?
    let resultJSON: String?
    let isSucess: Bool?
    let message: String?
    let exception: ExceptionModel?
    let stackTrace: String?
    
    enum CodingKeys: String, CodingKey {
            case result = "Result"
            case resultJSON = "ResultJson"
            case isSucess = "IsSucess"
            case message = "Message"
            case exception = "Exception"
            case stackTrace = "StackTrace"
        }
}
