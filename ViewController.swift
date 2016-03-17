//
//  ViewController.swift
//  Padimi_1
//
//  Created by Bobby Nwokonneya  on 3/13/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username_label: UILabel!
    var status:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username_label.text = status
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
       self.performSegueWithIdentifier("showTableViewController", sender: self)
    }
  
//    @IBAction func bookAservice(sender: AnyObject) {
//        self.dismissViewControllerAnimated(true, completion: nil)
//    }
//
    
    @IBAction func bookService(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

