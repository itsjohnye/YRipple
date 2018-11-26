//
//  ViewController.swift
//  YRippleDemo
//
//  Created by Yip on 2018/11/26.
//  Copyright © 2018 Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let demoView1 = DemoView1()
    let demoView2 = DemoView2()
    
    var frame1 = CGRect(x:60, y:200, width:300, height:250)
    var frame2 = CGRect(x:60, y:500, width:300, height:250)
    
    let gray = UIColor.gray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x:140, y:120, width:150, height:50))
        label.text = "Just Tap It!"
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        self.view.addSubview(label)
        
        
        demoView1.frame = frame1
        demoView1.layer.borderWidth = 1
        demoView1.layer.borderColor = gray.cgColor
        demoView1.setGradientBackground(topColor:Colors.violet,bottomColor: Colors.midPurple)
        self.view.addSubview(demoView1)
        let view1Label = UILabel(frame: CGRect(x:60, y:200, width:150, height:30))
        view1Label.textColor = UIColor.white
        view1Label.text = "rippleBorder()"
        self.view.addSubview(view1Label)
        
        
        demoView2.frame = frame2
        demoView2.layer.borderWidth = 1
        demoView2.layer.borderColor = gray.cgColor
        demoView2.setGradientBackground(topColor:Colors.midPurple,bottomColor: Colors.darkPurple)
        self.view.addSubview(demoView2)
        let view2Label = UILabel(frame: CGRect(x:60, y:500, width:150, height:30))
        view2Label.textColor = UIColor.white
        view2Label.text = "rippleFill()"
        self.view.addSubview(view2Label)
             
        
    }
    
    
}

