//
//  MessageManager.swift
//  TestNetWorking
//
//  Created by 李长松 on 16/4/5.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation
import Alamofire


class MessageManager: CSAPIBaseManager,CSAPIManagerDelegate {
    
    var showHUDView: UIView?
    // 版本号
    var apiVersion: String {
        get{return ""}
    }
    // 请求URL
    var apiName: String {
        get{return "messages/getMessageData.php"}
    }
    // 请求方式
    var httpMethod: Alamofire.Method {
        get{return .POST}
    }
    // 服务器配置
    var server: CSServer {
        get{return kServer}
    }
    
    override init() {
        super.init()
//        self.shouldAutoCacheResultWhenSuccess = true
    }
    
}
