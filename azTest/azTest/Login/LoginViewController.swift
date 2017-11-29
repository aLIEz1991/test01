//
//  LoginViewController.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/27.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Result

class LoginViewController: UIViewController, UITextFieldDelegate {

    var userTextField = UITextField()
    var pwdTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //隐藏nav & tabBar
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
        
        self.view.backgroundColor = .white
        
        initLoginView()
        
        
        //创建合法信号
        userTextField.reactive.continuousTextValues.map() {
            
            text in
            return self.userTextField.text
            
        }
        
        pwdTextField.reactive.continuousTextValues.map() {
            
            text in
            return self.pwdTextField.text
            
        }
        
    }

    //MARK: 初始化页面
    func initLoginView() {
        
        //userTextField
        userTextField.borderStyle = .roundedRect
        //add
        self.view.addSubview(userTextField)
        //约束
        userTextField.activateConstraints {
            
            self.userTextField.top_attr.equal(to: self.view.top_attr_safe, constant: 60)
            self.userTextField.left_attr.equal(to: self.view.left_attr_safe, constant: 10)
            self.userTextField.height_attr.constant = 30
            self.userTextField.width_attr.constant = self.view.frame.size.width - 20
            
        }
        
        //pwdTextField
        pwdTextField.borderStyle = .none
        pwdTextField.layer.masksToBounds = true
        pwdTextField.layer.cornerRadius = 10
        pwdTextField.layer.borderWidth = 1
        pwdTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        //add
        self.view.addSubview(pwdTextField)
        //约束
        pwdTextField.activateConstraints {
            
            self.pwdTextField.top_attr.equal(to: self.view.top_attr_safe, constant: 60+30+10)
            self.pwdTextField.left_attr.equal(to: self.view.left_attr_safe, constant: 10)
            self.pwdTextField.height_attr.constant = 30
            self.pwdTextField.width_attr.constant = self.view.frame.size.width - 20
            
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /* 约束的设置,控件内部约束由自己添加，比如宽高，如果是与其他的
     控件约束那么有父控件添加
     
     ＊创建约束 NSLayoutConstraint  参数 说明：
     * item 自己
     * attribute
     * relatedBy 大于等于 小于等于 等于
     * toItem 另外一个控件
     * attribute 另一个控件的熟悉
     * multiplier 乘以多少
     * constant : 加上多少
     * NSLayoutConstraint : 某个控件的属性值 等于 另外一个控件的属性值
     乘以多少 加上多少
     * 添加约束 addConstraint
     
     //add
     self.view.addSubview(self.userTextField)
     
     //设成false后下面添加的约束才能生效
     self.userTextField.translatesAutoresizingMaskIntoConstraints = false
     
     let topUserTF : NSLayoutConstraint = NSLayoutConstraint.init(item: self.userTextField,
     attribute: .top,
     relatedBy: .equal,
     toItem: self.view,
     attribute: .top,
     multiplier: 1,
     constant: 10)
     userTextField.addConstraint(topUserTF)
     
     */
    
}
