//
//  ViewController.swift
//  CSNetManagerDemo
//
//  Created by 李长松 on 16/6/17.
//  Copyright © 2016年 LiChangsong. All rights reserved.
//

import UIKit

class ViewController: UIViewController , ViewManagerCallBackDelegate{
    
    var viewControllerHelper: ViewControllerHelper?
    
    //MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        initHelper()
    }
    
    // MARK: - ViewManagerCallBackDelegate
    func callBackSuccess() {
        //        DDLogVerbose("Helper请求回调")
    }
    
    func callBackFailue() {
        //        DDLogVerbose("Helper请求回调失败")
    }
    
    // 初始化Helper
    func initHelper() {
        viewControllerHelper = ViewControllerHelper()
        viewControllerHelper?.callBackDelegate = self
        viewControllerHelper?.messageManager?.loadData()
    }
}

