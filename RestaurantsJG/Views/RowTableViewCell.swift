//
//  RowTableViewCell.swift
//  RestaurantsJG
//
//  Created by Javier Antonio Granda Tabares on 9/9/16.
//  Copyright © 2016 Javier Granda Company. All rights reserved.
//

import UIKit

class RowTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
