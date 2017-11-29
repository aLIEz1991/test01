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
    // 检查检查网络状态是否当前网络可用
//    func checkNetworkStates() {
//        // 初始化
//        let reachability : Reachability
//
//        if reachability.isReachableViaWiFi || reachability.isReachableViaWWAN {
//            print("当前网络可用")
//        }else {
//            print("当前网络不可用")
//            // 网络不可用是添加 提示框
//            altertStatus()
//            
//        }
//    }
//
//
//    // 无网络状态添加提示框
//    func altertStatus() {
//        let alerContl = UIAlertController.init(title: "提示：", message: "无网络链接", preferredStyle: UIAlertControllerStyle.alert)
//    }
    

    
//    class func isExistenceNetWork() -> Bool {
//
//        var isExistenceNetWork : Bool = false
//
//        let reachability = Reachability.init(hostName: "www.baidu.com")
//
//        switch reachability?.currentReachabilityStatus() {
//        case NotReachable?:
//
//            isExistenceNetWork = false
//
//        case ReachableViaWiFi?:
//
//            isExistenceNetWork = true
//
//        case ReachableViaWWAN?:
//
//            isExistenceNetWork = true
//
//        default:
//
//            break
//
//        }
//
//        return isExistenceNetWork
//
//    }
    
    
    
    
    
}
