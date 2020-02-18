//
//  APIErrorParsing.swift
//  TAS_ERP
//
//  Created by V on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

protocol APIErrorParsing {
    
    func parse(response: HTTPURLResponse, data: Data?) -> APIError?
}
