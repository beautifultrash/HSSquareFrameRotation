//
//  UIColorExtension.swift
//  HSSquareFrameRotation
//
//  Created by song on 2017. 5. 17..
//  Copyright © 2017년 song. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(redColor: Int, greenColor: Int, blueColor: Int, alpha: CGFloat) {
        assert(redColor >= 0 && redColor <= 255, "Invalid red component")
        assert(greenColor >= 0 && greenColor <= 255, "Invalid green component")
        assert(blueColor >= 0 && blueColor <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(redColor) / 255.0, green: CGFloat(greenColor) / 255.0, blue: CGFloat(blueColor) / 255.0, alpha: alpha)
    }
    
    convenience init(hex: Int) {
        self.init(redColor:(hex >> 16) & 0xff, greenColor:(hex >> 8) & 0xff, blueColor:hex & 0xff, alpha:1.0)
    }
    
    convenience init(hexStr: String) {
        var cString:String = hexStr.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        self.init( red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                   green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                   blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                   alpha: CGFloat(1.0) )
        
    }
}

