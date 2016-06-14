//
//  CSServer.swift
//  CSArchitecture
//
//  Created by 李长松 on 16/4/10.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation

// 服务器类型
enum ServerType : Int{
    case OnLine = 0
    case OffLine = 1
    case PrepareOnLine = 2
    case LocalLine = 3
}

public class CSServer : NSObject {
    // 设置当前服务器环境
    static var serverType: ServerType = ServerType.OnLine
    // 线上环境地址
    private var onlineURL: String
    // 离线环境地址
    private var offlineURL: String
    // 预上线线环境地址
    private var prepareOnLineURL: String
    // 本地环境地址
    private var localLineURL: String
    
    var url: String {
        get {
            switch CSServer.serverType {
            case ServerType.OnLine :
                return self.onlineURL
            case ServerType.OffLine :
                return self.offlineURL
            case ServerType.PrepareOnLine :
                return self.prepareOnLineURL
            case ServerType.LocalLine :
                return self.localLineURL            }
        }
    }
    init(online: String, offline: String, prepareOnLine: String, localLine: String) {
        self.onlineURL = online
        self.offlineURL = offline
        self.prepareOnLineURL = prepareOnLine
        self.localLineURL = localLine
        super.init()
    }
}

// MARK: 设置不同的环境 预上线，上线，测试, 下线
public let kServer = CSServer(online: "http://api.huixueyuan.cn/ifdood_dev01/v2",
                              offline: "http://api.huixueyuan.cn/ifdood_dev01/v2",
                              prepareOnLine: "http://api.huixueyuan.cn/ifdood_dev01/v2",
                              localLine: "http://api.huixueyuan.cn/ifdood_dev01/v2")




