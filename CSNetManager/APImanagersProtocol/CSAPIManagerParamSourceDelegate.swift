//
//  CSAPIManagerParamSourceDelegate.swift
//  CSArchitecture
//
//  Created by 李长松 on 16/4/10.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation

protocol CSAPIManagerParamSourceDelegate : NSObjectProtocol{
    // 设置网络请求参数回调
    func paramsForApi(manager: CSAPIBaseManager) -> [String: AnyObject]
}