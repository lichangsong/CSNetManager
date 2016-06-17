//
//  MessageModel.swift
//  TestNetWorking
//
//  Created by 李长松 on 16/4/6.
//  Copyright © 2016年 Li. All rights reserved.
//

import Foundation
class MessageModel {
    var mesArray: [MesModel]?
    var message: String?
    var newMesFromPri: String?
    var newMesFromSys: String?
    var newMessages: String?
    var personNews: String?
    var success: String?
    var systemNews: String?
    var totalCount: String?
    
    init () {
        
    }
    
    init(mesArray: [MesModel],message: String,newMesFromPri: String,newMesFromSys: String,newMessages: String,personNews: String, success: String, systemNews: String,totalCount: String) {
        self.mesArray = mesArray
        self.message = message
        self.newMesFromPri = newMesFromPri
        self.newMesFromSys = newMesFromSys
        self.newMessages = newMessages
        self.personNews = personNews
        self.success = success
        self.systemNews = systemNews
        self.totalCount = totalCount
    }
}

class MesModel {
    var comment: String?
    var contenturl: String?
    var created: String?
    var date: String?
    var icon_url: String?
    var id: String?
    var messtype: String?
    var status: String?
    var subtitle: String?
    var title: String?
    var type: String?
    
    init () {
        
    }
    
    init(comment: String, contenturl: String, created: String, date: String, icon_url: String, id: String, messtype: String, status: String, subtitle: String, title: String, type: String ) {
        self.comment = comment
        self.contenturl = contenturl
        self.created = created
        self.date = date
        self.icon_url = icon_url
        self.id = id
        self.messtype = messtype
        self.status = status
        self.subtitle = subtitle
        self.title = title
        self.type = type
    }
}