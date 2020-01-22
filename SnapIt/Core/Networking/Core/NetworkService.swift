//
//  NetworkService.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import Alamofire

typealias Method = Alamofire.HTTPMethod

protocol Networking {
    
    func execute<Response: APIResponseProtocol>(request: APIRequestProtocol, completion: @escaping (Response?, APIError?) -> Void)
}

class NetworkService {
    
    let errorParser: APIErrorParsing
    
    init(errorParser: APIErrorParsing) {
        self.errorParser = errorParser
    }
    
    // MARK: - Private
	
    private func validateResponse(request: URLRequest?, response: HTTPURLResponse, data: Data?) -> Request.ValidationResult {
        if let error = errorParser.parse(response: response, data: data) {
            return .failure(error)
        }
        
        return .success
    }
    
    private func encoding(for method: Method) -> ParameterEncoding {
        switch method {
        case .get, .head, .delete:
            return URLEncoding.default
        default:
            return JSONEncoding.default
        }
    }
}

// MARK: - Networking

extension NetworkService: Networking {
    
    func execute<Response: APIResponseProtocol>(request: APIRequestProtocol, completion: @escaping (Response?, APIError?) -> Void) {
        Alamofire.request(request.endpoint,
                          method: request.method,
                          parameters: request.parameters,
                          encoding: encoding(for: request.method),
                          headers: request.headers)
            .validate(validateResponse)
            .responseJSON { (response) in
                switch response.result {
                case .success(let value):
					if let value = value as? [[String: Any]] {
						let response = Response(with: value)
						completion(response, nil)
					} else {
						let response = Response(with: value as? [String: Any])
						completion(response, nil)
					}
                case .failure(let error):
                    completion(nil, error as? APIError)
                }
        }
    }
}
