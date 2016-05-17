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
    
    @IBOutlet weak var hiddenImage: UIImageView!
    var hiddenImageCounter = 0
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var displayIncorrectPassword: UILabel!
    
    @IBAction func usernameTextField(sender: AnyObject) {
    }
    
    @IBAction func passwordTextField(sender: AnyObject) {
    }
    
    let username = ["Will", "Andrei", "Minh", "Kyle", "Jame"]
    let password = "crusaders1"
    @IBOutlet weak var loginButtonText: UIButton!
    
   // Pseudo code
    @IBAction func loginButton(sender: AnyObject) {
        if username.contains(usernameText.text!) && passwordText.text == password {
            self.performSegueWithIdentifier("login", sender: nil)
        }
        else {
            displayIncorrectPassword.text = "Incorrect username or password"
            hiddenImageCounter += 1
            if hiddenImageCounter == 5 {
                hiddenImage.image = UIImage(named: "ICantDoItImage.jpg")
            }
            if hiddenImageCounter == 10 {
                hiddenImage.image = UIImage(named: "HackingPepe.jpg")
                hiddenImageCounter = 0
            }
        }
    }

}