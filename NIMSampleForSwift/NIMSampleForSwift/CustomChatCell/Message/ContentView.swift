//
//  ContentView.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation


class ContentView: NIMSessionMessageContentView {
    var titleLabel: UILabel = UILabel(frame: CGRectZero)
    var subTitleLabel: UILabel = UILabel(frame: CGRectZero)
    
    override init!(sessionMessageContentView: ()) {
        super.init(sessionMessageContentView: ())
        self.titleLabel.font = UIFont.systemFontOfSize(13)
        self.subTitleLabel.font = UIFont.systemFontOfSize(12)
        
        self.addSubview(self.titleLabel)
        self.addSubview(self.subTitleLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func refresh(data: NIMMessageModel!) {
        super.refresh(data)
        let object: NIMCustomObject! = data.message.messageObject as! NIMCustomObject
        let attachment: Attachment! = object.attachment as! Attachment
        
        self.titleLabel.text = attachment.titile as String
        self.subTitleLabel.text = attachment.subTitle as String
        
        if !self.model.message.isOutgoingMsg{
            self.titleLabel.textColor = UIColor.blackColor()
            self.subTitleLabel.textColor = UIColor.blackColor()
        }else{
            self.titleLabel.textColor = UIColor.whiteColor()
            self.subTitleLabel.textColor = UIColor.whiteColor()
        }
        
        self.titleLabel.sizeToFit()
        self.subTitleLabel.sizeToFit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let titleOriginX: CGFloat = 10;
        let titleOriginY: CGFloat = 10;
        let subTitleOriginX: CGFloat = (self.frame.size.width  - self.subTitleLabel.frame.size.width) / 2;
        let subTitleOriginY: CGFloat = self.frame.size.height  - self.subTitleLabel.frame.size.height - 10;

        var frame: CGRect = self.titleLabel.frame;
        frame.origin = CGPointMake(titleOriginX, titleOriginY);
        self.titleLabel.frame = frame;
        
        frame = self.subTitleLabel.frame;
        frame.origin = CGPointMake(subTitleOriginX, subTitleOriginY);
        self.subTitleLabel.frame = frame;

    }
    
}