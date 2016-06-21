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


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //注册APP，请将 NIMSDKAppKey 换成您自己申请的App Key
        let NIMSDKAppKey = "8fc95f505b6cbaedf613677c8e08fc0b";
        NIMSDK.sharedSDK().registerWithAppID(NIMSDKAppKey, cerName: "");
        
        //注入 NIMKit 内容提供者
        NIMKit.sharedKit().provider = DataProvider()
        
        //需要自定义消息时使用
        NIMCustomObject.registerCustomDecoder(AttachmentDecoder())

        return true
    }

}

