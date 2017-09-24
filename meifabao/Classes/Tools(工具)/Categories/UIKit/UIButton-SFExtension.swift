//
//  UIButton-SFExtension.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//

import UIKit

extension UIButton {
    
    
    /// 创建文本按钮
    ///
    /// - Parameters:
    ///   - title: 按钮标题
    ///   - fontSize: 按钮字体大小
    ///   - color: 按钮普通状态颜色,默认为黑色
    ///   - highlighterColor: 按钮高亮状态颜色,默认为白色
    ///   - backgroundImage: 按钮背景图片
    convenience init(title: String?, fontSize: CGFloat = 14,color: UIColor = UIColor.black, highlightedColor: UIColor = UIColor.black, imageName: String? = nil, backgroundImageName: String? = nil) {
        self.init()
        
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        self.setTitleColor(color, for: .normal)
        self.setTitleColor(highlightedColor, for: .highlighted)
        self.setTitleColor(highlightedColor, for: .selected)
        if let imageName = imageName {
            self.setImage(UIImage(named:imageName), for: .normal)
            self.setImage(UIImage(named:imageName + "_highlighted"), for: .highlighted)
            self.setImage(UIImage(named:imageName + "_selected"), for: .selected)
        }
        if let backgroundImageName = backgroundImageName {
            self.setBackgroundImage(UIImage(named:backgroundImageName), for: .normal)
        }
        self.sizeToFit()
    }
    
    /// 创建图片按钮,按钮图片的名字一定要规范
    ///
    /// - Parameters:
    ///   - imageName: 普通状态下图片名字
    ///   - backgroundImageName: 按钮背景图片
    convenience init(title: String? = nil,titleColor: UIColor? = UIColor.darkGray,imageName: String, backgroundImageName: String) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.setImage(UIImage(named:imageName), for: .normal)
        self.setImage(UIImage(named:imageName + "_highlighted"), for: .highlighted)
        self.setImage(UIImage(named:imageName + "_selected"), for: .selected)
        self.setBackgroundImage(UIImage(named:backgroundImageName), for: .normal)
        self.sizeToFit()
    }
}

