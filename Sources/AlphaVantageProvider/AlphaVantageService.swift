//
//  AlphaVantageService.swift
//  AlphaVantageProvider
//
//  Created by AJ Bartocci on 10/27/17.
//

import Foundation
import AlphaVantageDriver

final public class AlphaVantageService {
    public static func setup(apiKey: String, session: URLSession = .shared) {
        //        AlphaVantage.shared.apiKey = apiKey
        //        AlphaVantage.shared.session = session
        AlphaVantage.shared = AlphaVantage(apiKey: apiKey, session: session)
    }
}
