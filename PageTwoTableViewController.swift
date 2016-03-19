//
//  PageTwoTableViewController.swift
//  Padimi
//
//  Created by Bobby Nwokonneya  on 3/18/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import Foundation
import UIKit

class PageTwoTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    
//    @IBOutlet weak var phototwo: UIImageView!
//    
//    @IBOutlet weak var summarytwo: UILabel!
//    @IBOutlet weak var nametwo: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var PageTwo = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PageTwo.count
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("secondcell", forIndexPath: indexPath) as UITableViewCell
//
        
       Cell.textLabel?.text = PageTwo[indexPath.row]
//        Cell.textLabel?.text = PageTwo[indexPath.row]
//        Cell.textLabel?.text = PageTwo[indexPath.row]
        
        
        
        return Cell
    }
}
