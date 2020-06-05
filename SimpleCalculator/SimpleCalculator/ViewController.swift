//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Misha Strutinsky on 04.06.2020.
//  Copyright © 2020 InPickSys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var someNumber = 1
        print(someNumber)
    }

    @IBAction func plusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber + secondNumber
                
                resultLabel.text = String(result)
                
                
            }
         }
        
        
        
        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
                   if let secondNumber = Int(secondText.text!) {
                    result = firstNumber - secondNumber
                       
                       resultLabel.text = String(result)
                       
                       
                   }
                }
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
                   if let secondNumber = Int(secondText.text!) {
                        result = firstNumber * secondNumber
                       
                       resultLabel.text = String(result)
                       
                       
                   }
                }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
                   if let secondNumber = Int(secondText.text!) {
                       result = firstNumber / secondNumber
                       
                       resultLabel.text = String(result)
                       
                       
                   }
                }
    }
}

