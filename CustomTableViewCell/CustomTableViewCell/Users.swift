//
//  Users.swift
//  CustomTableViewCell
//
//  Created by Alex Pelletier on 12/3/15.
//  Copyright © 2015 Alex Pelletier. All rights reserved.
//

import UIKit

class Users: NSObject {
    static var sharedInstance = Users()
    
    var users = [User]()
    
    override init(){
        super.init()
        
        let data: [[String: String]] = [
            ["firstName":"James", "lastName":"Bond","image":"image1"],
            ["firstName":"Taylor", "lastName":"Swift","image":"image2"],
            ["firstName":"Adam", "lastName":"Sandler","image":"image3"],
            ["firstName":"Zack", "lastName":"Galifianakis","image":"image4"],
            ["firstName":"Some Old", "lastName":"Guy","image":"image5"]
        ]
        
        for var item in data{
            let user = User(firstname: item["firstName"]!, lastname: item["lastName"]!, image: UIImage(named: item["image"]!)! )
            users.append(user)
        }
        
    }
}
