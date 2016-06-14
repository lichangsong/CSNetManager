//
//  CSRequestGenerator.swift
//  CSArchitecture
//
//  Created by 李长松 on 16/4/10.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation
import Alamofire

class CSRequestGenerator: NSObject {
    
    class func generateRequestWithAPI(api: CSAPIBaseManager, method: Alamofire.Method, params: [String: AnyObject]) -> Request {
        // 网络请求的参数格式处理，获取请求的Request
        let request = Manager.sharedInstance.request(method, api.apiURLString(), parameters: ["json": NSData.jsonString(params)!] , encoding: .URL, headers: nil)
        return request
    }
}

extension NSData {
    // 将字典转换成JSON字符串
    class func jsonString(jsonDictionary: [String:AnyObject]) -> String? {
        do {
            let  data  = try NSJSONSerialization.dataWithJSONObject(jsonDictionary, options: NSJSONWritingOptions())
            let strJson = NSString(data: data, encoding: NSUTF8StringEncoding)
            return strJson as? String
        } catch {
            // No-op
        }
        return ""
    }
}