//
//  UILabel-SFExtension.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, fontSize: CGFloat = 14, textColor: UIColor = UIColor.darkGray, lines: Int = 0) {
        self.init()
        self.text = text;
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.textColor = textColor
        self.numberOfLines = lines
    }
    
    
    func calculateSize(lineSpace: CGFloat = 0) -> CGSize {
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = lineSpace
        let size = CGSize(width: self.preferredMaxLayoutWidth, height: CGFloat(MAXFLOAT))
        if let text = text {
            return (text as NSString).boundingRect(with: size, options: [.usesLineFragmentOrigin], attributes: [NSAttributedStringKey.font: font,NSAttributedStringKey.paragraphStyle: paragraph], context: nil).size
        }
        return CGSize.zero
    }
}
