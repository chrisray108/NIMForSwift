//
//  AppDelegate.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/4.
//  Copyright © 2016年 Netease. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //注册APP，请将 NIMSDKAppKey 换成您自己申请的App Key
        let NIMSDKAppKey = "8fc95f505b6cbaedf613677c8e08fc0b";
        NIMSDK.shared().register(withAppID: NIMSDKAppKey, cerName: "");
                
        //需要自定义消息时使用
        NIMCustomObject.registerCustomDecoder(AttachmentDecoder())
        
        //注册会话布局
        NIMKit.shared().registerLayoutConfig(CellLayoutConfig())

        return true
    }

}

