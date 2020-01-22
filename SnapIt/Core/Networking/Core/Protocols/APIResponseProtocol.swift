//
//  APIResponseProtocol.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

protocol APIResponseProtocol {
    
    init(with json: [String: Any]?)
    init(with json: [[String: Any]]?)
}

extension APIResponseProtocol {
	
	init(with json: [[String: Any]]?) {
		self.init(with: json?.first)
	}
}
