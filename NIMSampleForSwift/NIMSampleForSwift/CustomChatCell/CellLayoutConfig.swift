//
//  CellLayoutConfig.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation
class CellLayoutConfig: NSObject, NIMCellLayoutConfig {
    func contentSize(model: NIMMessageModel!, cellWidth width: CGFloat) -> CGSize {
        //填入内容大小
        return CGSizeMake(200, 50)
    }
    
    func cellContent(model: NIMMessageModel!) -> String! {
        //填入自定义的气泡ContentView
        return "NIMSampleForSwift.ContentView"
    }
    
    func cellInsets(model: NIMMessageModel!) -> UIEdgeInsets {
        //填入气泡距cell的边距，选填
        return UIEdgeInsetsMake(5, 5, 5, 5)
    }
    
    func contentViewInsets(model: NIMMessageModel!) -> UIEdgeInsets {
        //填入内容距气泡的边距，选填
        return UIEdgeInsetsMake(5, 5, 5, 5)
    }
    
}