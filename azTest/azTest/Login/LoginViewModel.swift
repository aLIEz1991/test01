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
import Alamofire

class LoginViewModel: AZBaseViewModel {

    //定义变量
    var userName : String!
    var password : String!
    
    var loginAction : Action<(),[LoginModel],AnyError>!
    
    var loginModel = [LoginModel]()
    
    //初始化
    override init() {
        
        super .init()
        
        initialBind()
    }
    
    //mvvm 
    func initialBind() {

        loginAction = Action<(), [LoginModel],AnyError> {

            (_) -> SignalProducer<[LoginModel], AnyError> in
            SignalProducer<String, AnyError>({

                (observer, _) in

                //网络判断
                let net : Bool = AZAppTools.isExistenceNetWork()
                
                if net {
                    
                    print(self.userName+"+++++"+self.password)
                    // JSONEncoding.default === JSONEncoding.prettyPrinted
                    Alamofire.request("http://192.168.31.47:8080/wekl/auth", method: .post, parameters: ["username":self.userName,"password":self.password], encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in

                        if(response.error == nil){
                            
                            print("请求成功")
                            print(response.result.value ?? "")
                            let data = try? JSONSerialization.data(withJSONObject: response.result.value ?? "", options: JSONSerialization.WritingOptions.prettyPrinted)
                            let strJson=NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                            //观察者
                            observer.send(value: strJson! as String)
                            observer.sendCompleted()
                            
                        }else{
                            
                            print("请求失败\(String(describing: response.error))")
                            
                        }
                        
                    }
                    
                }
                
            }).map({ (str) -> [LoginModel] in

                //结果处理
                let resultDic = try! JSONSerialization.jsonObject(with: str.data(using: .utf8) ?? Data(), options: JSONSerialization.ReadingOptions.mutableContainers)  as! Dictionary<String, Any>

                //定义返回值
                let result = LoginModel(dic:resultDic)

                //处理返回值
                return [result]
            })
        }

    }
    
}
