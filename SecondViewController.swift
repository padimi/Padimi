//
//  SecondViewController.swift
//  Padimi_1
//
//  Created by Bobby Nwokonneya  on 3/14/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource
{
    
    @IBAction func bookAservice(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBOutlet weak var collectionView: UICollectionView!

    let appleProducts = ["Cleaning", "Plumbing", "Electrical", "Furniture Installation"]
    
    let imageArray = [UIImage(named: "pug"), UIImage(named: "pug2"), UIImage(named:"pug3"), UIImage(named: "pug4")]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appleProducts.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath:
            indexPath)
            
        as! CollectionViewCell
        
        cell.imageView?.image = self.imageArray[indexPath.row]
        cell.titleLabel?.text = self.appleProducts[indexPath.row]
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage"
        {
        
            let indexPaths = self.collectionView.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destinationViewController as! NewViewController
            
            vc.image = self.imageArray[indexPath.row]!
            vc.title = self.appleProducts[indexPath.row]
        }
    }
    
}
