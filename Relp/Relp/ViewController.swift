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

var controller = ViewController()

struct Data {
    var click1 = controller.imageButton1
    var click2 = controller.imageButton2
    var click3 = controller.imageButton3
    var description1: String = "\(controller.descriptionLabel1)"
    var description2: String = "\(controller.descriptionLabel2)"
    var description3: String = "\(controller.descriptionLabel3)"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel1: UILabel!
    @IBOutlet weak var descriptionLabel2: UILabel!
    @IBOutlet weak var descriptionLabel3: UILabel!
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let data = Data()
        if let destinationViewController = segue.destinationViewController as? CommentScreenViewController {
            destinationViewController.data = data
        }
    }
    @IBAction func imageButton1(sender: AnyObject) {
        let click = 1
        
    }
    @IBAction func imageButton2(sender: AnyObject) {
        let click = 2
        
    }
    @IBAction func imageButton3(sender: AnyObject) {
        let click = 3
        
    }
    }