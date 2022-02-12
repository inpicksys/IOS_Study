//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    let images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = images[0]
        diceImageView2.image = images[5]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        diceImageView1.image = images.randomElement()
        diceImageView2.image = images[rightDiceNumber]
        
    }
    
}

