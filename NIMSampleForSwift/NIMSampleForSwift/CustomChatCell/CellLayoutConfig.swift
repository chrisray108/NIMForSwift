//
//  CellLayoutConfig.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation
class CellLayoutConfig: NIMCellLayoutConfig {
    override func contentSize(_ model: NIMMessageModel!, cellWidth width: CGFloat) -> CGSize {
        if self.canLayoutModel(model){
            //填入内容大小
            return CGSize(width: 200, height: 50)
        }
        return super.contentSize(model, cellWidth: width)
    }
    
    override func cellContent(_ model: NIMMessageModel!) -> String! {
        if self.canLayoutModel(model) {
            //填入自定义的气泡ContentView
            return "NIMSampleForSwift.ContentView"
        }
        return super.cellContent(model)
        
    }
    
    override func cellInsets(_ model: NIMMessageModel!) -> UIEdgeInsets {
        if self.canLayoutModel(model) {
            //填入气泡距cell的边距，选填
            return UIEdgeInsetsMake(5, 5, 5, 5)
        }
        return super.cellInsets(model)
        
    }
    
    override func contentViewInsets(_ model: NIMMessageModel!) -> UIEdgeInsets {
        if self.canLayoutModel(model) {
            //填入内容距气泡的边距，选填
            return UIEdgeInsetsMake(5, 5, 5, 5)
        }
        return super.contentViewInsets(model)
        
    }
    
    
    func canLayoutModel(_ model: NIMMessageModel!) -> Bool{
        let type = model.message.messageType
        switch type{
        case .custom:
            return true
        default:
            return false
        }
    }

}
