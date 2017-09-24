//
//  UIView-SFExtension.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//

import UIKit

// MARK: - layer相关属性
extension UIView {
    
    @IBInspectable public var borderColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.borderColor ?? UIColor.white.cgColor)
        }
        set {
            self.layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.masksToBounds = true;
            // 栅格化优化性能
            self.layer.rasterizationScale = UIScreen.main.scale;
            self.layer.shouldRasterize = true;
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
}
