//
//  ViewController.swift
//  ProjectLayout
//
//  Created by Misha Strutinsky on 06.06.2020.
//  Copyright © 2020 InPickSys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        
        dLabel.text = "Demo from code"
        dLabel.textAlignment = .center
        dLabel.frame = CGRect(x: width/2 - width*0.8/2,y: height/2, width: width*0.8, height: 50)
        view.addSubview(dLabel)
        
        let dButton = UIButton()
        dButton.setTitle("Dynamic Button", for: UIControl.State.normal)
        dButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        dButton.frame = CGRect(x: width*0.5 - 100, y: height*0.6, width: 200, height: 100)
        view.addSubview(dButton)
        
        dButton.addTarget(self, action: #selector(ViewController.dAction), for: UIControl.Event.touchUpInside)
    }


    @objc func dAction(){
        print("tapped")
        dLabel.text = "tapped"
    }
    
}

