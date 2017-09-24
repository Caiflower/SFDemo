//
//  Bundle-SFExtension.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//


import Foundation

extension Bundle {
    public var nameSpace: String {
        return (infoDictionary?["CFBundleName"] as? String ?? "") + "."
    }
    
    public var targetVersion: String {
        return (infoDictionary?["CFBundleShortVersionString"] as? String ?? "")
    }
}
