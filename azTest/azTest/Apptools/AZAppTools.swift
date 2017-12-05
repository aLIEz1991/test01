//
//  AZAppTools.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/10.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import Foundation
import Reachability

class AZAppTools: NSObject,UIAlertViewDelegate {
    
//MARK: -- 初始化单例模式
    class func shareAppTools() -> AZAppTools {
        
        struct Static {
            
            static let appTools : AZAppTools = AZAppTools()
            
        }
        
        return Static.appTools
    }

    
    //MARk: -- 网络判断
    class func isExistenceNetWork() -> Bool {
    
        var isExistenceNetWork : Bool = false

        let reachability = Reachability()

        if (reachability?.connection != .none) {

            isExistenceNetWork = true

        }
        
        print("net-status:")
        print(reachability?.connection ?? "网络default")
        print("---------------net end")
        
        return isExistenceNetWork
    }

    
    
}
