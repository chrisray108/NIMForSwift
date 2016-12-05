//
//  ContentView.swift
//  NIMSampleForSwift
//
//  Created by chris on 16/5/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

import Foundation


class ContentView: NIMSessionMessageContentView {
    var titleLabel: UILabel = UILabel(frame: CGRect.zero)
    var subTitleLabel: UILabel = UILabel(frame: CGRect.zero)
    
    override init!(sessionMessageContentView: ()) {
        super.init(sessionMessageContentView: ())
        self.titleLabel.font = UIFont.systemFont(ofSize: 13)
        self.subTitleLabel.font = UIFont.systemFont(ofSize: 12)
        
        self.addSubview(self.titleLabel)
        self.addSubview(self.subTitleLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func refresh(_ data: NIMMessageModel!) {
        super.refresh(data)
        let object: NIMCustomObject! = data.message.messageObject as! NIMCustomObject
        let attachment: Attachment! = object.attachment as! Attachment
        
        self.titleLabel.text = attachment.titile as String
        self.subTitleLabel.text = attachment.subTitle as String
        
        if !self.model.message.isOutgoingMsg{
            self.titleLabel.textColor = UIColor.black
            self.subTitleLabel.textColor = UIColor.black
        }else{
            self.titleLabel.textColor = UIColor.white
            self.subTitleLabel.textColor = UIColor.white
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
        frame.origin = CGPoint(x: titleOriginX, y: titleOriginY);
        self.titleLabel.frame = frame;
        
        frame = self.subTitleLabel.frame;
        frame.origin = CGPoint(x: subTitleOriginX, y: subTitleOriginY);
        self.subTitleLabel.frame = frame;

    }
    
}
