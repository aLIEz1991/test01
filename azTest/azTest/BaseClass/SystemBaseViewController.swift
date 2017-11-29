//
//  SystemBaseViewController.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/9.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Result

class SystemBaseViewController: UIViewController {
    
    var  activityIndicatorView = UIActivityIndicatorView() //系统默认loading(小菊花)
    
    //MARK: -- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
       
        //loading
        activityIndicatorView = UIActivityIndicatorView.init(frame: CGRect(x:0, y:CGFloat(LineHeight * 2), width:SCREEN_WIDTH, height:SCREEN_HEIGHT))
        //背景色较深需调整，背景区域需要重新设定
        activityIndicatorView.backgroundColor = .lightGray
        activityIndicatorView.alpha = 0.38
        activityIndicatorView.color = .darkGray
        self.view .addSubview(activityIndicatorView)
        activityIndicatorView.hidesWhenStopped = true
        
        activityIndicatorView.isUserInteractionEnabled = true
        //        let tpgesture1 = UITapGestureRecognizer()
        //        tpgesture1.addTarget(self, action: #selector(tapGestureAction))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureAction))
        tapGesture.numberOfTapsRequired = 1
        activityIndicatorView.addGestureRecognizer(tapGesture)
        //动画开始，结束
        //        activityIndicatorView.startAnimating();
        //        activityIndicatorView.stopAnimating();
    }
    
    //MARK: -- 点击隐藏activtyIndicatorView
    @objc func tapGestureAction() {
        
        activityIndicatorView.stopAnimating()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

