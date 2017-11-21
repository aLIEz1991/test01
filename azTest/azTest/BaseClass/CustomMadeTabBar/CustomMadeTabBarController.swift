//
//  CustomMadeTabBarController.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/14.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

class CustomMadeTabBarController: UITabBarController, CustomMadeBarDelegate {
    
    //定义定制的tabBar
    var customTabbar = CustomMadeBar()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //替换原生tabBar
        customTabbar = CustomMadeBar.init(frame: self.tabBar.frame)
        self.setValue(customTabbar, forKey: "tabBar")
        //实现代理
        customTabbar.delegateBar = self
        
        //绘制画面
        self.setTabBar()
        // Do any additional setup after loading the view.
    }

//MARK: -- 添加TabBar VC ，绘制画面
    func setTabBar() {
        
        //添加子控制器
        self.setOneChildViewController(vc: HomeViewController(), title: "Home", image: "", selectedImage: "")
        self.setOneChildViewController(vc: ManagerViewController(), title: "Manager", image: "", selectedImage: "")
        self.setOneChildViewController(vc: StatisticsViewController(), title: "Statistics", image: "", selectedImage: "")
        self.setOneChildViewController(vc: PersonalViewController(), title: "Personal", image: "", selectedImage: "")
        
        //添加定制tabBar按钮
        self.setValue(customTabbar, forKey: "tabBar")
        
    }
    
//MARK: -- 子视图添加
    func setOneChildViewController(vc:UIViewController, title:NSString, image:NSString, selectedImage:NSString ) {
        //设置标题
        vc.title = title as String;
        //设置按钮点击图标
        if 0 < image.length {
            
            vc.tabBarItem.image = UIImage(named:image as String)
            vc.tabBarItem.selectedImage = UIImage(named:selectedImage as String)
            
        }
        
//        let baseVC = BaseCustomTabBarViewController.init(rootViewController: vc)
        
        //添加tabbar子视图
//        self.addChildViewController(baseVC)
        self.addChildViewController(vc)
        
    }
    
    
    //MARK: -- delegate 实现代理方法
    func barButtonAction(sender: CustomButton) {
        
        NSLog("+++++++++++++++++center+++++++++++++++++++")
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
