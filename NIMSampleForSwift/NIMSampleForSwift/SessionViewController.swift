//
//  SessionViewController.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

class SessionViewController: NIMSessionViewController {
    
    override func sessionTitle() -> String! {
        return "聊天"
    }
    
    override func sessionConfig() -> NIMSessionConfig! {
        return SessionConfig()
    }
    
    override func onTapMediaItem(item: NIMMediaItem!) {
        switch item.tag {
        case 0:
            self.sendCustomMessage()
            break;
        default:
            break;
        }
    }
    
    func sendCustomMessage() {
        //构造自定义内容
        let attachemnt: Attachment = Attachment()
        attachemnt.titile = "这是一条自定义消息"
        attachemnt.subTitle = "这是自定义消息的副标题"
        
        //构造自定义MessageObject
        let object: NIMCustomObject = NIMCustomObject()
        object.attachment = attachemnt
        
        //构造自定义消息
        let message: NIMMessage = NIMMessage()
        message.messageObject = object
        
        //发送消息
        do {
            try NIMSDK.sharedSDK().chatManager.sendMessage(message, toSession: self.session)
        } catch {
            
        }
        
    }
    
}