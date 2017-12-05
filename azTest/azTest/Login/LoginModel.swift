//
//  LoginModel.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/30.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

class LoginModel: NSObject {

    var token : String = ""//token
    
    //赋值转化成model
    init(dic:[String:Any]) {
        token = dic["token"] as? String ?? ""
    }
    
    // 字典转Model，Model中没有的key重写不抛出异常
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
