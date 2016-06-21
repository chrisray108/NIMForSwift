//
//  DataProvider.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/4.
//  Copyright © 2016年 Netease. All rights reserved.
//

import UIKit

class DataProvider: NSObject, NIMKitDataProvider {
    
    func infoByUser(userId: String, withMessage message: NIMMessage) -> NIMKitInfo {
        let info = NIMKitInfo()
        info.avatarImage  = UIImage(named: "DefaultAvatar")
        //注意只有将用户数据托管给云信才可以调用此方法，否则请自行维护用户昵称等数据
        let user = NIMSDK.sharedSDK().userManager.userInfo(userId)
        info.showName = user?.userInfo?.nickName
        return info
    }
    
}