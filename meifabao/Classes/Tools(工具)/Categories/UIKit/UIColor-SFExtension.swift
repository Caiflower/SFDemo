//
//  UIColor-SFExtension.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1){
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    
    public class func coler(hex: Int32, alpha:CGFloat = 1) -> UIColor {
        let red = (hex & 0xFF0000) >> 16
        let green = (hex & 0xFF00) >> 8
        let blue = hex & 0xFF
        return UIColor(r: CGFloat(red), g: CGFloat(green), b: CGFloat(blue), a: alpha)
    }
    
    public class func randomColor() -> UIColor  {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
}
