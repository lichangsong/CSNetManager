//
//  CSAPIManagerDelegate.swift
//  CSArchitecture
//
//  Created by 李长松 on 16/4/10.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation
import Alamofire

public protocol CSAPIManagerDelegate : NSObjectProtocol {
    // API版本号
    var apiVersion: String { get }
    // API地址
    var apiName: String { get }
    // 请求方式
    var httpMethod: Alamofire.Method { get }
    // 服务器状态
    var server: CSServer { get }
}