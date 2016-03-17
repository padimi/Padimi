//
//  CustomTableViewController.swift
//  Padimi
//
//  Created by Bobby Nwokonneya  on 3/15/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var names = ["Cleaning", "Plumbing","Electrical", "Craftswork", "Automotive"]
    
    var desc = ["Get a spotless home", "Lighting, Fans, AC's and more", "Drains, Pipes, Faucets and more", "Installation, Assembly and more", "Tow Truck Hire, Tyre Replacement and more"]
    var images = [UIImage(named:"pug"),UIImage(named:"pug2"),UIImage(named:"pug3"),UIImage(named:"pug4"),UIImage(named:"pug5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      // tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
//        self.tableView.registerNib(UINib(nibName: "CustomTableViewController", bundle: nil), forCellReuseIdentifier: "cell")// CustomTableViewCell.self, forCellReuseIdentifier: "customCell")
        //self.tableView.dataSource = self
        //self.tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath)as! CustomCell
        
        cell.photo.image = images[indexPath.row]
        cell.summary.text = desc[indexPath.row]
        cell.name.text = names[indexPath.row]
        
        return cell
    }

}
