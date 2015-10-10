//
//  TwitterTableViewController.swift
//  TwitterCellStackViewDemo
//
//  Created by dasdom on 10.10.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class TwitterTableViewController: UITableViewController {

    let tweets = [["handle": "@dasdom", "date": "2 m", "tweet": "UIStackViews are so awesome! Looking forward to rewrite all UI code. Presumable some time next year.", "quote": "Check out my UIStackView tutorial. It's awesome!"],
    ["handle": "@dasdom", "date": "3 m", "tweet": "This is a tweet without a quote to show that this works as well."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tweets.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetCell", forIndexPath: indexPath) as! TweetCell

        let tweet = tweets[indexPath.row]
        cell.handleLabel.text = tweet["handle"]
        cell.dateLabel.text = tweet["date"]
        cell.tweetLabel.text = tweet["tweet"]
        cell.quoteLabel.text = tweet["quote"]
        
        return cell
    }
    
}
