//
//  AttachmentDecoder.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

class AttachmentDecoder: NSObject, NIMCustomAttachmentCoding {
    
    func decodeAttachment(content: String!) -> NIMCustomAttachment! {
        //所有的自定义消息都会走这个解码方法，如有多种自定义消息请自行做好类型判断和版本兼容。这里仅演示最简单的情况。
        var attachment: NIMCustomAttachment?
        let dict: Dictionary<String,String>? = Dictionary.JSON2Dictionary(content)
        if let d = dict {
            let title = d["title"];
            let subTitle = d["subTitle"]
            let myAttachment = Attachment()
            myAttachment.titile = title!
            myAttachment.subTitle = subTitle!
            attachment = myAttachment
        }
        return attachment
    }

}