//
//  NewViewController.swift
//  Padimi_1
//
//  Created by Bobby Nwokonneya  on 3/14/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBAction func bookAservice(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var imageView: UIImageView!
    //load an image inside the imageView
    
    var image = UIImage() //Creates property
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = self.image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
