//
//  User.swift
//  CustomTableViewCell
//
//  Created by Alex Pelletier on 12/3/15.
//  Copyright © 2015 Alex Pelletier. All rights reserved.
//

import UIKit

class User {
    var firstName: String
    var lastName: String
    var profileImage: UIImage
    
    var fullname:String{
        get {
            return "\(firstName) \(lastName)"
        }
    }
    
    init(firstname f: String,lastname l: String,image i: UIImage) {
        self.firstName = f
        self.lastName = l
        self.profileImage = i
    }
}
