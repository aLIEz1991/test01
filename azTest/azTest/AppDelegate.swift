//
//  AppDelegate.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/8.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //初始化窗口
        window = UIWindow(frame: UIScreen.main.bounds)
        //初始化页面
        
        if 1 == 1 {

            self.window?.rootViewController = LoginViewController()

        } else {
        
            //系统tabBarViewController
            
            let homeVC = HomeViewController()
            let navHomeVC = UINavigationController(rootViewController: homeVC)
            navHomeVC.tabBarItem.title = "AZHOME"
            navHomeVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.brown], for: .selected)
            navHomeVC.tabBarItem.image = UIImage(named: "")
            navHomeVC.tabBarItem.selectedImage = UIImage(named:"")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
            let managerVC = ManagerViewController()
            let navManagerVC = UINavigationController(rootViewController: managerVC)
            navManagerVC.tabBarItem.title = "Manager"
            navManagerVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.brown], for: .selected)
            navManagerVC.tabBarItem.image = UIImage(named: "manager")
            navManagerVC.tabBarItem.selectedImage = UIImage(named:"manager")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
            let statisticsVC = StatisticsViewController()
            let navStatisticsVC = UINavigationController(rootViewController: statisticsVC)
            navStatisticsVC.tabBarItem.title = "Statistics"
            navStatisticsVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.brown], for: UIControlState.selected)
            navStatisticsVC.tabBarItem.image = UIImage(named: "statistics")
            navStatisticsVC.tabBarItem.selectedImage = UIImage(named:"statistics")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            
            let personalVC = PersonalViewController()
            let navPersonalVC = UINavigationController(rootViewController: personalVC)
            navPersonalVC.tabBarItem.title = "Personal"
            navPersonalVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.brown], for: UIControlState.selected)
            navPersonalVC.tabBarItem.image = UIImage(named:"mine")
            navPersonalVC.tabBarItem.selectedImage = UIImage(named:"mine")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            
            
        
            //添加tabbarViewController
            let tabBarVC = UITabBarController()
            tabBarVC.setViewControllers([navHomeVC, navManagerVC, navStatisticsVC, navPersonalVC], animated: true)
            
            window?.rootViewController = tabBarVC
            
        }
        
        // 显示窗口
        window?.makeKeyAndVisible()
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

