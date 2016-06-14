//
//  CSAPIManagerApiCallBackDelegate.swift
//  CSArchitecture
//
//  Created by 李长松 on 16/4/10.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol CSAPIManagerApiCallBackDelegate : NSObjectProtocol{
    
    // 网络请求成功后回调
    func ApiManager(apiManager: CSAPIBaseManager, finishWithOriginData data: JSON) -> Void
    
    // 网络请求失败后回调
    func ApiManager(apimanager: CSAPIBaseManager, failedWithError error: CSAPIManagerErrorType) -> Void
}
