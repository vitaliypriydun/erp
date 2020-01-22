//
//  APIErrorParser.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

class APIErrorParser {
    
    // MARK: - Private
    
    private func error(from json: [[String: Any]], statusCode: Int) -> APIError {
        var errorMessages: [String] = []
        var errorKey: String?
        for error in json {
            guard let errorDescriptions = error["error_descriptions"] as? [String] else { continue }
            errorMessages.append(contentsOf: errorDescriptions)
            guard let key = error["error_key"] as? String else { continue }
            errorKey = key
        }
        let errorDescription = errorMessages.joined(separator: "\n")
        
        return BackendError(statusCode: statusCode, message: errorDescription, errorKey: errorKey)
    }
}

extension APIErrorParser: APIErrorParsing {
    
    func parse(response: HTTPURLResponse, data: Data?) -> APIError? {
        // ignore successful responses
        if 200..<300 ~= response.statusCode {
            return nil
        }
        
        guard let data = data,
            let json = (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)) as? [String: Any],
            let message = json["message"] as? [[String: Any]] else {
                return BackendError.makeIncorrectResponseFormatError(statusCode: response.statusCode)
        }

        return error(from: message, statusCode: response.statusCode)
    }
}
