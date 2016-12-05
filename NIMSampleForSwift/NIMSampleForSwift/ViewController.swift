//
//  ViewController.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation
let NIMMyAccount  = "lilei"
let NIMMyToken    = "123456"
let NIMChatTarget = "hanmeimei"

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "登录"
    }
    
    @IBAction func login() {
        //请将 NIMMyAccount 以及 NIMMyToken 替换成您自己提交到此App下的账号和密码
        NIMSDK.shared().loginManager.login(NIMMyAccount, token: NIMMyToken) { (error :Error?) in
            if let err = error{
                print("登录失败 \(err)")
            } else{
                print("登录成功")
                //创建session,这里聊天对象预设为韩梅梅，此账号也是事先提交到此App下的
                let session: NIMSession = NIMSession(NIMChatTarget, type: NIMSessionType.P2P)
                //创建聊天页，这个页面继承自 NIMKit 中的组件 NIMSessionViewController
                if let nav = self.navigationController,
                    let vc = SessionViewController(session: session){
                    nav.pushViewController(vc, animated: true)
                }
                
            }
        }
    }
}
