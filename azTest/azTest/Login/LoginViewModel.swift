//
//  LoginViewModel.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/30.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Result

class LoginViewModel: AZBaseViewModel {

    var userName : String!
    var password : String!
    
    var loginAction : Action<(),[LoginModel],AnyError>!
    
    var loginModel = [LoginModel]()
    
    override init() {
        
        super .init()
        
        initialBind()
    }
    
    
    func initialBind() {

        loginAction = Action<(), [LoginModel],AnyError> {

            (_) -> SignalProducer<[LoginModel], AnyError> in
            SignalProducer<String, AnyError>({

                (observer, _) in

                //网络判断
                let net : Bool = AZAppTools.isExistenceNetWork()
                
                if net {
                    print(self.userName+"+++++"+self.password)
                }
                
                
            }).map({ (str) -> [LoginModel] in

                //结果处理
                
                
                //定义返回值
                var result = [LoginModel]()
                
                //处理返回值
                
                return result
            })
        }

    }
    
    
    
}
