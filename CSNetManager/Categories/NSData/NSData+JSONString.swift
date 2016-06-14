//
//  NSData+JSONString.swift
//  CSArchitecture
//
//  Created by 李长松 on 16/4/10.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation

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
