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
        return NIMKit.shared().config.defaultMediaItems()  as! [NIMMediaItem]
    }
    
    func disableCharlet() -> Bool {
        return true
    }
}
