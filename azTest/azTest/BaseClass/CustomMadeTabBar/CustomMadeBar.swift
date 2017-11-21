//
//  CustomMadeBar.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/15.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

//定义一个协议 让代理去实现点击 加号时候的方法
protocol CustomMadeBarDelegate {
    
    func barButtonAction(sender : CustomButton)
    
}


class CustomMadeBar: UITabBar {
    
    var delegateBar: CustomMadeBarDelegate?
    
    let publishButton : CustomButton = CustomButton.init(frame: CGRect.zero)
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        // 把自定义的 Button 放到 自定义的 tabbar 上
        self.addSubview(publishButton)
    
        publishButton.addTarget(self, action: #selector(publishClick(senderTab:)), for: .touchUpInside)
        
    }
    
    // 可视化编程时候走这个方法
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.addSubview(publishButton)
        
        publishButton.addTarget(self, action: #selector(publishClick(senderTab:)), for: .touchUpInside)
        
        fatalError("init(coder:) has not been implemented")
    }
    
    // 布局子控件
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        let btnW : CGFloat = self.frame.size.width / 5
        let btnH : CGFloat = self.frame.size.height
        let btnY : CGFloat = 0.0
        
        var btnIndex : Int = 0
        
        for subView in self.subviews {
            
            if subView.classForCoder != NSClassFromString("UITabBarButton") {
                
                continue
                
            } else {
                
                var btnX : CGFloat = CGFloat(btnIndex) * btnW
                
                // 把发布按钮的位置预留出来
                if btnIndex >= 2 { // 右边的2个UITabBarButton
                    btnX += btnW;
                }
                
                subView.frame = CGRect(x:btnX, y:btnY, width:btnW, height:btnH)
                
                btnIndex+=1
            }
            
        }
        
        /**** 设置中间的发布按钮的frame ****/
        self.publishButton.frame = CGRect(x:0, y:0, width:btnW, height:btnH);
        self.publishButton.center = CGPoint(x:self.frame.size.width * 0.5, y:self.frame.size.height * 0.5)
        
        
    }
    
    //按钮点击事件
    @objc func publishClick(senderTab : CustomButton) {
        
        self.delegateBar?.barButtonAction(sender: senderTab)
    }
    
}
