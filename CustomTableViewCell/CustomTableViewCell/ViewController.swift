//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Alex Pelletier on 12/3/15.
//  Copyright © 2015 Alex Pelletier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: "refresh:", forControlEvents: UIControlEvents.ValueChanged)
        tableView.addSubview(refreshControl)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: UITableViewDataSource & UITableViewDelegate
    func refresh(sender: UIRefreshControl){
        tableView.reloadData()
        sender.endRefreshing()
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Users.sharedInstance.users.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let user = Users.sharedInstance.users[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("userCell") as! UserTableViewCell
        cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.width/2
       cell.profileImageView.image = user.profileImage
    
       cell.fullNameLabel.text = user.fullname
        
        return cell
    }

}










