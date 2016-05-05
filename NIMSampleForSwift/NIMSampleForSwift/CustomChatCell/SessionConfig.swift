//
//  SessionConfig.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation

class SessionConfig: NSObject, NIMSessionConfig {
    func mediaItems() -> [NIMMediaItem]! {
        return [
            NIMMediaItem(0, normalImage: UIImage(named:"icon_custom_normal"), selectedImage: UIImage(named:"icon_custom_pressed"), title: "自定义消息")
        ]
    }
    
    func layoutConfigWithMessage(message: NIMMessage!) -> NIMCellLayoutConfig? {
        if message.messageType == NIMMessageType.Custom {
            return CellLayoutConfig()
        }
        //其他内置消息类型，如果需沿用预定义的组件布局，则返回nil。
        return nil;
    }
}