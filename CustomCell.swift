//
//  CustomCell.swift
//  Padimi
//
//  Created by Bobby Nwokonneya  on 3/15/16.
//  Copyright © 2016 Bobby Nwokonneya . All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
  
    
    @IBOutlet weak var summary: UILabel!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
