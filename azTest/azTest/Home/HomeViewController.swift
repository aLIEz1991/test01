//
//  HomeViewController.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/13.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

class HomeViewController: AZBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //标题
        self.labelTitle.text = "Home"
        
        //隐藏左右按钮
        leftBtn.isHidden = true
        rightBtn.isHidden = true
        
        NSLog("------------Home-------------")
        
        
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
