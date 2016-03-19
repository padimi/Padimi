//
//  CustomTableViewController.swift
//  Padimi
//
//  Created by Bobby Nwokonneya  on 3/15/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Cleaning", "Plumbing","Electrical", "Craftswork", "Automotive"]
    
    let desc = ["Get your spotless home or office space", "Drains, Pipes, Faucets and more", "Lighting, Fans, AC's and more", "Installation, Assembly and more", "Tow Truck Hire, Tyre Replacement and more"]
    let images = [UIImage(named:"pug"),UIImage(named:"pug2"),UIImage(named:"pug3"),UIImage(named:"pug4"),UIImage(named:"pug5")]
    
//    struct PageOneItems {
//        var names: String
//        var desc: String
//        var images: UIImage
//    }
//    
//    var PageOne = [PageOneItems]()
    
    var PageTwo = [PageTwoItems]()
    
    
    override func viewDidLoad() {
        
//        PageOne = [PageOneItems(names: "Cleaning", desc: "Get your spotless home or office space", images:[UIImage(named:"pug")]),
//            PageOneItems(names: "Plumbing", desc: "Drains, Pipes, Faucets and more", images: [UIImage(named:"pug2")]),
//            PageOneItems(names: "Electrical", desc: "Lighting, Fans, AC's and more", images: [UIImage(named:"pug3")]),
//            PageOneItems(names: "Craftswork", desc: "Installation, Assembly and more", images: [UIImage(named:"pug4")]),
//            PageOneItems(names: "Automotive", desc: "Tow Truck Hire, Tyre Replacement and more", images: [UIImage(named:"pug4")])]

        
        PageTwo = [PageTwoItems(nametwo:["Home Cleaning", "Office Cleaning", "Moving In/Out Cleaning"], summarytwo:["Let your home sparkle","Office space cleaning right at your fingertips","New Home or Old Home? We've got you covered"],phototwo:["","",""]),
            PageTwoItems(nametwo:["Drains, Pipes & Faucets", "Showers and Bath Tubs", "Toilet and Wash Basin", "Water Heater"], summarytwo:["Fix Your Broken Pipes, Clogged Drains and Leaky Faucets","Showers and Bath Tubs working just right"," ", " "],phototwo:["","",""]),
            PageTwoItems(nametwo:["Lighting Fixtures", "Air Conditioners & Fans", "Generators"], summarytwo:["..","..",".."],phototwo:["","",""]),
            PageTwoItems(nametwo:["Furniture Assembly/Installation", "Interior Painting", "Doors, Windows & Curtains"], summarytwo:["..","...","..."],phototwo:["","",""]),
            PageTwoItems(nametwo:["Tow Truck Hire", "Tyre/Vulcanizer Help", "Auto-Consultant"], summarytwo:["...","...","..."],phototwo:["","",""])]
        

        
        super.viewDidLoad()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 5
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = self.tableView.dequeueReusableCellWithIdentifier("newcell", forIndexPath:indexPath) as!CustomCell
        
        cell.photo.image = images[indexPath.row]
        cell.summary.text = desc[indexPath.row]
        cell.name.text = names[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestViewController = segue.destinationViewController as! PageTwoTableViewController
        
        var PageTwoArrayTwo : PageTwoItems
        
        PageTwoArrayTwo = PageTwo[indexPath.row]
        
        DestViewController.PageTwo = PageTwoArrayTwo.nametwo
        DestViewController.PageTwo = PageTwoArrayTwo.summarytwo
        DestViewController.PageTwo = PageTwoArrayTwo.phototwo
        
      
        
        
    }

}
