//
//  MappableTransforms.swift
//  TAS_ERP
//
//  Created by V on 3/26/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import ObjectMapper

extension TransformOf {
    
    static var base64Image: TransformOf<UIImage, String> {
        return TransformOf<UIImage, String>(fromJSON: { base64String -> UIImage? in
            guard let base64String = base64String,
                let imageData = Data(base64Encoded: base64String) else {
                    return nil
            }
        
            return UIImage(data: imageData)
        }, toJSON: { image -> String? in
            return image?.pngData()?.base64EncodedString(options: .lineLength64Characters)
        })
    }
    
    static var expirationDate: TransformOf<Date, Int> {
        return TransformOf<Date, Int>(fromJSON: { remainingTime -> Date? in
            guard let time = remainingTime else { return nil }
            return Date(timeInterval: TimeInterval(time), since: Date())
        }, toJSON: { expirationDate -> Int? in
            return Int(expirationDate?.timeIntervalSinceNow ?? 0)
        })
    }
}
