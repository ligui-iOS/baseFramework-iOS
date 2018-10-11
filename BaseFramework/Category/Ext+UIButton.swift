//
//  Ext+UIButton.swift
//  BaseFramework
//
//  Created by 贾则栋 on 2018/8/9.
//  Copyright © 2018年 贾则栋. All rights reserved.
//

import UIKit

public extension UIButton {

    public func setBackgroundColor(_ color: UIColor, forState: UIControlState) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()?.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.setBackgroundImage(colorImage, for: forState)
    }

}
