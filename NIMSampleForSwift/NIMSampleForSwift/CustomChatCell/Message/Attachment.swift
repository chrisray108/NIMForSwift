//
//  Attachment.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

class Attachment: NSObject, NIMCustomAttachment {
    
    var titile = ""
    var subTitle = ""
    
    func encode() -> String {
        let dict = ["title":self.titile,"subTitle":self.subTitle]
        do {
            let data: Data = try JSONSerialization.data(withJSONObject: dict, options: JSONSerialization.WritingOptions.prettyPrinted)
            if let encodeString = String.init(data: data, encoding: String.Encoding.utf8) {
               return encodeString
            }
            return ""
        } catch {
            print(error)
            return ""
        }
    }
}
