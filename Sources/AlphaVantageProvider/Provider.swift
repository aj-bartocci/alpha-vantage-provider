//
//  Provider.swift
//  AlphaVantageProviderPackageDescription
//
//  Created by AJ Bartocci on 10/23/17.
//

import Vapor
import AlphaVantageDriver

public final class Provider: Vapor.Provider {
    public static var repositoryName: String = "alpha-vantage-provider"
    private let apiKey: String
    
    public func boot(_ config: Config) throws {
        
    }
    
    public func boot(_ droplet: Droplet) throws {
        
    }
    
    public func beforeRun(_ droplet: Droplet) throws {
        AlphaVantageService.setup(apiKey: self.apiKey)
    }
    
    public convenience init(config: Config) throws {
        let key = "api-key"
        let file = "alpha-vantage"
        guard let apiKey = config[file, key]?.string else {
            throw ConfigError.missing(key: [key], file: file, desiredType: String.self)
        }
        self.init(apiKey: apiKey)
    }
    
    public init(apiKey: String) {
        self.apiKey = apiKey
    }
}


