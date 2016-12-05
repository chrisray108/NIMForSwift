//
//  Dictionary+Util.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

extension Dictionary {
    public static func JSON2Dictionary(_ json: String) -> Dictionary? {
        if let data = json.data(using: String.Encoding.utf8) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                guard let dictionary = json as? Dictionary else {
                    return nil
                }
                return dictionary
            } catch {
                return nil
            }
        }
        return nil
    }
    
    
    public func Dictionary2JSON() -> String? {
        do {
            let data = try JSONSerialization.data(withJSONObject: self as AnyObject, options: JSONSerialization.WritingOptions.init(rawValue: 0))
            return String(data: data, encoding: String.Encoding.utf8)
        } catch {
           return nil
        }
        
    }
}

