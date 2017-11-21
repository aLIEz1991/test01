//
//  AZAppTools.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/10.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import Foundation

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
        
        let reachability = Reachability.init(hostName: "www.baidu.com")
        
        switch reachability?.currentReachabilityStatus() {
        case NotReachable?:

            isExistenceNetWork = false
        
        case ReachableViaWiFi?:
        
            isExistenceNetWork = true
            
        case ReachableViaWWAN?:
            
            isExistenceNetWork = true

        default:
            
            break
            
        }
        
        return isExistenceNetWork
        
    }
    
    
    
    
    
}
