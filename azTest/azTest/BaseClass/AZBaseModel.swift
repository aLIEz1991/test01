//
//  AZBaseModel.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/30.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Result

class AZBaseModel: NSObject {

    init(dic:[String:Any]) {
        super.init()
        self.setValuesForKeys(dic)// 字典转Model便捷方法
    }
    
    // 字典转Model，Model中没有的key重写不抛出异常
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
