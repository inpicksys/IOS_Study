//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Misha Strutinsky on 25.04.2020.
//  Copyright © 2020 InPickSys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onClick(_ sender: Any) {
        imageView.image = UIImage(named: "george")
    }
}

