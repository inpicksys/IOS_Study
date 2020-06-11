//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Misha Strutinsky on 11.06.2020.
//  Copyright © 2020 InPickSys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthday")
        
        if let name = storedName as? String {
            nameLabel.text = name

            nameLabel.text = "Name: \(name)"
            
        }
        
        if let birthday = storedBirthDay as? String {
            birthdayLabel.text = birthday
            birthdayLabel.text = "Birthday: \(birthday)"
        }
    }

    @IBAction func btnSaveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        //UserDefaults.standard.synchronize()
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
    
    @IBAction func deleteData(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthDay as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
        
    }
    
}

