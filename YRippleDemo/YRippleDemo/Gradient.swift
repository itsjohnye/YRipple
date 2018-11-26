//
//  Gradient.swift
//  YRipple
//
//  Created by Ye on 2018/11/26.
//  Copyright © 2018 ye. All rights reserved.
//

import Foundation
import UIKit

struct Colors {
    static let white = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
    static let lightBlue = UIColor(red: 92/255.0, green: 233/255.0, blue: 255/255.0, alpha: 1.0)
    static let deepBlue = UIColor(red: 82/255.0, green: 177/255.0, blue: 255/255.0, alpha: 1.0)
    static let red = UIColor(red: 241/255.0, green: 39/255.0, blue: 17/255.0, alpha: 1.0)
    static let amber = UIColor(red: 245/255.0, green: 175/255.0, blue: 25/255.0, alpha: 1.0)
    static let darkPurple = UIColor(red: 22/255.0, green: 26/255.0, blue: 64/255.0, alpha: 1.0)
    static let midPurple = UIColor(red: 57/255.0, green: 59/255.0, blue: 173/255.0, alpha: 1.0)
    static let violet = UIColor(red: 88/255.0, green: 85/255.0, blue: 254/255.0, alpha: 1.0)
    
}

//UIView+extension
extension UIView {
    
    func setGradientBackground(topColor:UIColor,bottomColor:UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.locations = [0.0, 1.0]               //设置背景比例
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor]
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}
