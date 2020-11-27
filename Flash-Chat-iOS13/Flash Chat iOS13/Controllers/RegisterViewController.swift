//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

extension UITextField {
    func diableAutofill() {
        self.autocorrectionType = .no
        if #available(iOS 11.0, *) {
            self.textContentType = .username
        } else {
            self.textContentType = .init(rawValue: "")
        }
    }
}

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        passwordTextfield.becomeFirstResponder()
        passwordTextfield.diableAutofill()
        if #available(iOS 12, *) {
            // iOS 12 & 13: Not the best solution, but it works.
            passwordTextfield.textContentType = .oneTimeCode
        } else {
            // iOS 11: Disables the autofill accessory view.
            // For more information see the explanation below.
            emailTextfield.textContentType = .init(rawValue: "")
            passwordTextfield.textContentType = .init(rawValue: "")
        }
    }
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text,
           let password = passwordTextfield.text {
        
            Auth.auth().createUser(withEmail: email, password: password, completion: {authResult, error in
                if let e = error {
                    print(e.localizedDescription) // add this shit to error label
                } else {
                    // Navigate to chat
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
                
            })
        }
    
    }
    
}
