//
//  LoginScreen.swift
//  Relp
//
//  Created by Andrei Garcia on 5/5/16.
//  Copyright © 2016 William Arata. All rights reserved.
//

import Foundation
import MessageUI
import Foundation

class LoginScreenViewController: UIViewController {
    
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBAction func usernameTextField(sender: AnyObject) {
    }
    
    @IBAction func passwordTextField(sender: AnyObject) {
    }

    @IBOutlet weak var usernameTest: UILabel!
    
    let username = "Will"
    let password = "crusaders1"
    @IBOutlet weak var loginButtonText: UIButton!
    
   // Pseudo code
    @IBAction func loginButton(sender: AnyObject) {
        if usernameText.text == username && passwordText.text == password {
            self.performSegueWithIdentifier("segue", sender: nil)
        }
        else {
            usernameTest.text = "HI"
        }
    }
            //Log in to next screen
 //   }
   // else if {
     //   wrongPasswordLabel == "Wrong username and/or password. Get outta here."
   // }

}