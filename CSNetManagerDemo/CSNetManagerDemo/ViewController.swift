//
//  ViewController.swift
//  CSNetManagerDemo
//
//  Created by 李长松 on 16/6/17.
//  Copyright © 2016年 LiChangsong. All rights reserved.
//

import UIKit

// MARK: 设置不同的环境 预上线，上线，测试, 下线
public let kServer = CSServer(serverType: ServerType.OnLine,
                              online: "http://api.huixueyuan.cn/ifdood_dev01/v2",
                              offline: "http://api.huixueyuan.cn/ifdood_dev01/v2",
                              prepareOnLine: "http://api.huixueyuan.cn/ifdood_dev01/v2",
                              localLine: "http://api.huixueyuan.cn/ifdood_dev01/v2")

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
        viewControllerHelper?.messageManager?.showHUDView = self.view
        viewControllerHelper?.messageManager?.showHUD()
    }
}

