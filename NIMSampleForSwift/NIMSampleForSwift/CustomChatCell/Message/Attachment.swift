//
//  Attachment.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

class Attachment: NSObject, NIMCustomAttachment {
    
    var titile: NSString = ""
    var subTitle: NSString = ""
    
    func encodeAttachment() -> String! {
        let dict: Dictionary = ["title":self.titile,"subTitle":self.subTitle]
        do {
            let data: NSData = try NSJSONSerialization.dataWithJSONObject(dict, options: NSJSONWritingOptions.PrettyPrinted)
            let encodeString = String.init(data: data, encoding: NSUTF8StringEncoding)
            return encodeString
        } catch {
            print(error)
            return ""
        }
        
        
    }
    
    
}
