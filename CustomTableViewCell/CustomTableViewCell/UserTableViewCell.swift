//
//  UserTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Alex Pelletier on 12/3/15.
//  Copyright © 2015 Alex Pelletier. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var fullNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
