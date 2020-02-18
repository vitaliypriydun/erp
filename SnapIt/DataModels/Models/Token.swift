//
//  Token.swift
//  TAS_ERP
//
//  Created by V on 11.11.2019.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import ObjectMapper

class Token: NSObject, Mappable, NSCoding {
    
    private(set) var value = ""
    private(set) var refreshToken = ""
    private(set) var expirationDate = Date()
    
	required init?(map: Map) {}
    
	func mapping(map: Map) {
		value <- map[.token]
		refreshToken <- map[.refreshToken]
		expirationDate <- (map[.expiresIn], TransformOf<Date, Int>.expirationDate)
    }
	
	// MARK: - NSCoding

	required init?(coder: NSCoder) {
		guard let value = coder.decodeObject(forKey: .token) as? String,
			let refreshToken = coder.decodeObject(forKey: .refreshToken) as? String,
			let expirationDate = coder.decodeObject(forKey: .expiresIn) as? Date else {
			return nil
		}
		self.value = value
		self.refreshToken = refreshToken
		self.expirationDate = expirationDate
	}
	
	func encode(with coder: NSCoder) {
		coder.encode(value, forKey: .token)
		coder.encode(refreshToken, forKey: .refreshToken)
		coder.encode(expirationDate, forKey: .expiresIn)
	}
}

// MARK: - Constants

private extension String {
	
	static let token = "token"
	static let refreshToken = "refresh_token"
	static let expiresIn = "data.expires_in"
}
