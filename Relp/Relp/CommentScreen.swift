//
//  ViewController.swift
//  Relp
//
//  Created by William Arata on 5/2/16.
//  Copyright © 2016 William Arata. All rights reserved.
//

import UIKit
import MessageUI
import Foundation

class CommentScreenViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private var good: Int! = 0
    var bad: Int! = 0
    var login = LoginScreenViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mehmeh
        //meh
        //meh
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func badButton(sender: AnyObject) {
        
    }
    @IBAction func goodButton(sender: AnyObject) {
        
    }
    
    @IBAction func emailButton(sender: AnyObject) {
        //        commentLabel.text = commentTextField.text
        let mailComposeViewController = configuredMailComposeViewController()
        
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: false, completion: nil)
        } else {
            self.errorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController{
        let mailComposeVC = MFMailComposeViewController()
        mailComposeVC.mailComposeDelegate = self
        
        mailComposeVC.setToRecipients(["someone@somewhere.com"])
        mailComposeVC.setSubject("Sending e-mail")
        mailComposeVC.setMessageBody("e-mail sended", isHTML: false)
        return mailComposeVC
    }
    
    func errorAlert() {
        let errorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        errorAlert.show()
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}



