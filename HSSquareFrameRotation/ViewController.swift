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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func respondsToBeginRotate(sender: UIButton) {
        frameView.beginRotate()
    }

}

