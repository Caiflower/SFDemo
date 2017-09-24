//
//  SFBaseView.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//

import UIKit

class SFBaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    convenience required init?(coder aDecoder: NSCoder) {
        self.init(coder: aDecoder)
         initialize()
    }
    /// 初始化操作
    public func initialize() {
        isOpaque = false
        backgroundColor = UIColor.white
    }
}
