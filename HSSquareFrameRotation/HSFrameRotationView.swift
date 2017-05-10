//
//  HSFrameRotationView.swift
//  HSSquareFrameRotation
//
//  Created by song on 2017. 5. 10..
//  Copyright © 2017년 song. All rights reserved.
//

import UIKit

@IBDesignable


class HSFrameRotationView: UIView, CAAnimationDelegate {
    
    @IBInspectable var frameColor: UIColor?
    @IBInspectable var frameWidth: CGFloat = 0.0
    @IBInspectable var subFrames: Int = 5

    var subFrameList = [CALayer]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderColor = frameColor?.cgColor
        self.layer.borderWidth = frameWidth
        
        for _ in 0...subFrames {
            let subLayer = CALayer.init(layer: self.layer)
            subLayer.frame = self.bounds
            subLayer.borderColor = frameColor?.cgColor
            subLayer.borderWidth = frameWidth
            subFrameList.append(subLayer)
            self.layer.addSublayer(subLayer)
        }
    }
    
    func beginRotate() {
        for index in 0...subFrames {
            let subLayer = subFrameList[index]
            rotate360Degrees(target: subLayer, duration: 1.0, delay: index)
        }
    }
    
    func rotate360Degrees(target: CALayer, duration: CFTimeInterval = 1.0, delay: Int) {
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(.pi * 2.0)
        rotateAnimation.duration = duration
        rotateAnimation.beginTime = CACurrentMediaTime() + (Double(delay) * 0.4)

        rotateAnimation.delegate = self
        target.add(rotateAnimation, forKey: nil)
    }
}
