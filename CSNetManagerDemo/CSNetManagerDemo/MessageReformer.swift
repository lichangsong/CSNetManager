//
//  MessageReformer.swift
//  TestNetWorking
//
//  Created by 李长松 on 16/4/5.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation
import SwiftyJSON

class MessageReformer: CSReformer {
    
    func reformData(manager: CSAPIBaseManager, data: JSON) -> AnyObject {
        
        if manager.isKindOfClass(MessageManager) {
            // data 相关处理(选择处理成Model还是处理成与View匹配的字典格式,暂时使用处理成Model的方式)
            var messageJSON = data
            print(data)
            let mesArrJSON = messageJSON["data"]
            
            var mesArray: [MesModel] = []
            for (_,subJson):(String, JSON) in mesArrJSON {
//                let mesJSON = mesArrJSON[Int(index)!]
                let mesJSON = subJson
                let mesModel = MesModel(comment: mesJSON["comment"].stringValue,
                    contenturl: mesJSON["contenturl"].stringValue,
                    created: mesJSON["created"].stringValue,
                    date: mesJSON["date"].stringValue,
                    icon_url: mesJSON["icon_url"].stringValue,
                    id: mesJSON["id"].stringValue,
                    messtype: mesJSON["messtype"].stringValue,
                    status: mesJSON["status"].stringValue,
                    subtitle: mesJSON["subtitle"].stringValue,
                    title: mesJSON["title"].stringValue,
                    type: mesJSON["type"].stringValue)
                mesArray.append(mesModel)
            }
            let messageModel = MessageModel(mesArray: mesArray,
                message: messageJSON["message"].stringValue,
                newMesFromPri: messageJSON["newMesFromPri"].stringValue,
                newMesFromSys: messageJSON["newMesFromSys"].stringValue,
                newMessages: messageJSON["newMessages"].stringValue,
                personNews: messageJSON["personNews"].stringValue,
                success: messageJSON["success"].stringValue,
                systemNews: messageJSON["systemNews"].stringValue,
                totalCount: messageJSON["totalCount"].stringValue)
            
            return messageModel
        }
        return MessageModel()
    }
}