//
//  Const.swift
//  azTest
//
//  Created by DYG_Az on 2017/11/8.
//  Copyright © 2017年 DYG_Az. All rights reserved.
//

import Foundation


/************************  屏幕尺寸  ***************************/

// 屏幕宽度
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
// 屏幕高度
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

// iPhone4
let isIphone4 = SCREEN_HEIGHT  < 568 ? true : false
// iPhone 5
let isIphone5 = SCREEN_HEIGHT  == 568 ? true : false
// iPhone 6
let isIphone6 = SCREEN_HEIGHT  == 667 ? true : false
// iphone 6P
let isIphone6P = SCREEN_HEIGHT == 736 ? true : false
// iphone X
let isIphoneX = SCREEN_HEIGHT == 812 ? true : false
// 导航条高度
let NavHeight : CGFloat = isIphoneX ? 88 : 64
// Tab高度
let TabHeight : CGFloat = isIphoneX ? 49 + 34 : 49

// 左右边距
let Margin = 10
// 行高
let LineHeight = 44

// 宽度比例
let WIDTH_SCALE = UIScreen.main.bounds.size.width / 320
// 高度比例
let HEIGHT_SCALE = UIScreen.main.bounds.size.height / 568
