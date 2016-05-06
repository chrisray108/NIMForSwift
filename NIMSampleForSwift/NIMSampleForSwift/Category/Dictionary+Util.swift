//
//  Dictionary+Util.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

extension Dictionary {
    public static func JSON2Dictionary(json: String) -> Dictionary? {
        if let data = json.dataUsingEncoding(NSUTF8StringEncoding) {
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: [])
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
            let data = try NSJSONSerialization.dataWithJSONObject(self as! AnyObject, options: NSJSONWritingOptions.init(rawValue: 0))
            return String(data: data, encoding: NSUTF8StringEncoding)
        } catch {
           return nil
        }
        
    }
}

