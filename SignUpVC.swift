//
//  SignUpVC.swift
//  Padimi_1
//
//  Created by Bobby Nwokonneya  on 3/13/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signUp_Tapped(sender: AnyObject) {
    }
    @IBAction func gotoLogin_Tapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
