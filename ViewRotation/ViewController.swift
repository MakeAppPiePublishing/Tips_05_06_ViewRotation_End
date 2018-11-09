//
//  ViewController.swift
//  ViewRotation
//
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var knob: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var TouchPad: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let currentPoint = touch.location(in: view)
            let theta = 1.5 * currentPoint.x / view.frame.width
           let angle = (theta - 0.5) * CGFloat.pi
            knob.layer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
            label.text = String(format:"%02.3f pi",theta)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

