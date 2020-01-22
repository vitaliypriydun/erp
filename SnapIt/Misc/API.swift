//
//  API.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

struct API {
    
    private static var environment: Environment {
        #if DEBUG
        return EnvironmentType.development.environment
        #else
        return EnvironmentType.production.environment
        #endif
    }
        

    static var host: String { return API.protocol + environment.host }
        
    // MARK: - Endpoints

    enum Authentication {

        static var authentication: String { return makeEndpoint(with: ["login"]) }
        static var refreshToken: String { return makeEndpoint(with: ["login"]) }
        static var notificationsToken: String { return makeEndpoint(with: ["device_token"]) }
        static var profile: String { return makeEndpoint(with: ["profile"]) }
        static var logout: String { return makeEndpoint(with: ["logout"]) }
    }

    // MARK: - Links
    
    enum Links {
        static let privacy = URL(string: host + "/privacy")
        static let terms = URL(string: host + "/terms-and-conditions")
    }
    
    // MARK: - Types

    struct Environment {
        
        var host: String
    }

    enum EnvironmentType {

        case development
        case stage
        case production

        var environment: Environment {
            switch self {
            case .development: return Environment(host: developmentUrl)
            case .stage: return Environment(host: stageUrl)
            case .production: return Environment(host: productionUrl)
            }
        }
    }
    
    // MARK: - Private
    private static func makeEndpoint(with components: [String]) -> String {
        return ([host, apiPath, version, locale, role] + components).joined(separator: "/") + format
    }
}

// MARK: - Constants

extension API {
 
    private static var socketPort: Int { return 8083 }
    private static var apiPath: String { return "api" }
    private static var version: String { return "v1" }
    private static var locale: String { return "en" }
    private static var role: String { return "customer" }
    private static var format: String { return ".json" }
    private static var `protocol`: String { return "https://" }

    private static let developmentUrl = "devhypr.snapit.com"
    private static let productionUrl = "snapit.com"
    private static let stageUrl = "stagehypr.snapit.com"

    static var reachabilityHost: String { return "www.apple.com" }
}
