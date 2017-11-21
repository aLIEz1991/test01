//
//  AZBaseViewController.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/8.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import UIKit

class AZBaseViewController: UIViewController {

    //MARK: --定义变量
    var leftBtn = UIButton() // 左侧按钮
    var rightBtn = UIButton() // 右侧按钮
    var labelTitle = UILabel() //定义标题
    var safeAreaView = UIView()//安全区域
    
    var  activityIndicatorView = UIActivityIndicatorView() //系统默认loading(小菊花)
    
    
//MARK: -- viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        
        // 隐藏系统自带tabbar
//        self.tabBarController?.tabBar.isHidden = true
        // 隐藏系统自带nav
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
//MARK: -- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //自定义nav等控件属性
        let navView = UIView ()
        navView.backgroundColor = .white
        self.view.addSubview(navView)
        // MARK: -- iOS 11 适配安全区域_safe * ios11以下另行处理
        navView.activateConstraints {

            navView.top_attr = self.view.top_attr
            navView.left_attr = self.view.left_attr_safe
            navView.right_attr = self.view.right_attr_safe
            navView.height_attr.constant = NavHeight
            /**
            if (@available(iOS 11.0, *)) {

                top = self.view.safeAreaLayoutGuide.layoutFrame.origin.y - 44;

            } else {

                // Fallback on earlier versions
                top = 20;

            }
            */
        }
        
        //TODO:设置背景图片
        let bgImgView = UIImageView (image: UIImage.init(named: ""))
        bgImgView.frame = navView.frame;
        navView.addSubview(bgImgView)
        
        
        //MARK:设置左侧按钮
        leftBtn = UIButton.init(type: UIButtonType.custom)
        //按钮frame值未设置
//        leftBtn.backgroundColor = .red
        navView.addSubview(leftBtn)
        //leftbtn约束
        leftBtn.activateConstraints {
            
            self.leftBtn.top_attr.equal(to: navView.bottom_attr, constant: -42)
            self.leftBtn.left_attr.equal(to: navView.left_attr, constant: 10)
            self.leftBtn.height_attr.constant = 30
            self.leftBtn.width_attr.constant = 30
            
        }
        
        
        //MARK:设置Tilte
        labelTitle.text = "aLIEz&ams"
        labelTitle.font = UIFont.systemFont(ofSize: 20)
        labelTitle.textColor = .brown
        labelTitle.textAlignment = .center
        navView.addSubview(labelTitle)
        //labelTile约束
        labelTitle.activateConstraints {
            
            self.labelTitle.top_attr.equal(to: navView.bottom_attr, constant: -42)
            self.labelTitle.left_attr.equal(to: navView.left_attr, constant: (SCREEN_WIDTH/2 - 100))
            self.labelTitle.height_attr.constant = 40
            self.labelTitle.width_attr.constant = 200
            
        }
        
        
        //MARK:设置右侧按钮
        rightBtn = UIButton.init(type: UIButtonType.custom)
//        rightBtn.backgroundColor = .blue
        navView.addSubview(rightBtn)
        //rightBtn约束
        rightBtn.activateConstraints {
            
            self.rightBtn.top_attr.equal(to: navView.bottom_attr, constant: -42)
            self.rightBtn.right_attr.equal(to: navView.right_attr, constant: -10)
            self.rightBtn.height_attr.constant = 30
            self.rightBtn.width_attr.constant = 30
            
        }
        
        //默认显示
//        leftBtn.isHidden = true
//        rightBtn.isHidden = true
        
        
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
        
        //背景色
        self.view.backgroundColor = .white
        
        //safeArea 安全区域
        self.safeAreaView.backgroundColor = .gray
        self.view.addSubview(safeAreaView)
        safeAreaView.activateConstraints {
            
            self.safeAreaView.top_attr.equal(to: navView.bottom_attr, constant: 0);
            self.safeAreaView.left_attr.equal(to: self.view.left_attr_safe, constant: 0)
            self.safeAreaView.right_attr.equal(to: self.view.right_attr_safe, constant: 0)
            self.safeAreaView.bottom_attr.equal(to: self.view.bottom_attr_safe, constant: (self.tabBarController?.tabBar.frame.size.height)!)
            
        }
        
    }

    
//MARK: -- 点击隐藏activtyIndicatorView
    @objc func tapGestureAction() {
        
        activityIndicatorView.stopAnimating()
        
    }

    
//MARK: -- 判断粪叉
    public func isX() -> Bool {
        if UIScreen.main.bounds.height == 812 {
            return true
        }
        
        return false
    }
    
    
//MARK: -- 初始化 自定义loading
    func initLoading() {
        
        
        
    }
    
//MARK: -- 显示 自定义loading
    public func showLoading() {
        
        
        
    }
    
//MARK: -- 隐藏 自定义loading
    public func hideLoading() {
        
        
        
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
