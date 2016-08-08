//
//  CSAPIBaseManager+HUD.swift
//  CSNetManagerDemo
//
//  Created by 李长松 on 16/8/8.
//  Copyright © 2016年 LiChangsong. All rights reserved.
//

import Foundation
import MBProgressHUD

extension CSAPIBaseManager {
    public func showHUD() {
        MBProgressHUD.showHUDAddedTo(showHUDView, animated: false)
    }
    public func hidenHUD() {
        MBProgressHUD.hideHUDForView(showHUDView, animated: false)
    }
}