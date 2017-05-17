//
//  ViewController.swift
//  HSSquareFrameRotation
//
//  Created by song on 2017. 5. 10..
//  Copyright © 2017년 song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var frameView: HSFrameRotationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgColorLayer = CAGradientLayer()
        bgColorLayer.frame = self.view.bounds
        bgColorLayer.colors = [UIColor(hex: 0x2AC1BC).withAlphaComponent(0.5).cgColor as Any,
                               UIColor(hex: 0xF25050).withAlphaComponent(0.5).cgColor as Any]
        bgColorLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        bgColorLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        self.view.layer.addSublayer(bgColorLayer)

    }

    @IBAction func respondsToBeginRotate(sender: UIButton) {
        frameView.beginRotate()
    }

}

