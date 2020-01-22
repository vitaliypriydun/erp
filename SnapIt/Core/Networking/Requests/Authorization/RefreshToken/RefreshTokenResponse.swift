//
//  RefreshTokenResponse.swift
//  PassportScan
//
//  Created by Vitaliy Priydun on 11.11.2019.
//  Copyright © 2019 Vitaliy Priydun. All rights reserved.
//

import UIKit

class RefreshTokenResponse: APIResponseProtocol {
	
	var token: Token?
	
	required init(with json: [String: Any]?) {
		guard let json = json,
				   let success = json["success"] as? Bool,
				   success else {
				   token = nil
				   return
			   }
		token = Token(JSON: json)
	}
}
