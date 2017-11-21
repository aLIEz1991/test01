//
//  CustomButton.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/15.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

        
    override init(frame: CGRect)
    {
        
        super.init(frame: frame)
        
        // 设置自定义 Button
        self.setImage(UIImage(named:""), for: .normal)
        self.setTitle("Center", for: .normal)
        self.setTitleColor(.blue, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        self.titleLabel?.textAlignment = NSTextAlignment.center
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        // 重新布置子控件的位置  让 title 显示在照片的下面
        override func layoutSubviews() {
            super.layoutSubviews()
            // 主要就是区分好 imageView 和 titleLabel 的位置
            // 两者的宽度都是 Button 的宽度高度计算得到
            
            // 得到 label 的高 以及 Button 的高度是和宽度
            let labelH: CGFloat = (self.titleLabel?.font.lineHeight)!
            let buttonH: CGFloat = self.bounds.size.height
            let buttonW: CGFloat = self.bounds.size.width
            
            
            // 确定两个子控件的位置  就是让照片在上  标题在下 怎么弄你开心就好
            self.imageView?.frame = CGRect(x:0 + (buttonW - (buttonH - labelH))/2, y:0 ,width:buttonH - labelH, height:buttonH - labelH )
            
            self.titleLabel?.frame = CGRect(x:0, y:buttonH - labelH, width:buttonW, height:labelH)
            
        }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
