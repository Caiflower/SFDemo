//
//  String-SFExtension.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//
import UIKit
// MARK: - 路径相关
extension String {
    
    /// 获取caches全路径
    var caches: String {
        return (NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(self)
    }
    /// 获取temp全路径
    var temp: String {
        return (NSTemporaryDirectory() as NSString).appendingPathComponent(self)
    }
    /// 获取doc全路径
    var document: String {
        return (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(self)
    }
    
}


// MARK: - 计算文本矩形框尺寸
extension String {
    
    /// 根据文本计算其尺寸
    ///
    /// - Parameter font: 文本使用的字体
    /// - Returns: 文本尺寸
    func sf_size(font: UIFont) -> CGSize {
        var size = CGSize.zero
        let attributes = [NSAttributedStringKey.font: font]
        size = (self as NSString).size(withAttributes: attributes)
        size.width = CGFloat(ceilf(Float(size.width)))
        size.height = CGFloat(ceilf(Float(size.height)))
        return size
    }
    
    /// 计算文本宽高
    ///
    /// - Parameters:
    ///   - font: 文本所用的字体
    ///   - maxWidth: 最大宽度
    ///   - lineSpace: 行间距
    /// - Returns: 文本的宽高
    func calculateSize(font: UIFont,maxWidth: CGFloat = UIScreen.main.bounds.size.width) -> CGSize {
        
        let size = CGSize(width: maxWidth, height: CGFloat(MAXFLOAT))
        
        var textSize = (self as NSString).boundingRect(with: size, options: [.usesLineFragmentOrigin], attributes: [NSAttributedStringKey.font: font], context: nil
        ).size
        // 将高度取整,否则可能导致多行文字显示不全
        textSize.height = CGFloat(ceilf(Float(textSize.height)))
        
        return textSize
        
    }
}
