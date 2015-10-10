//
//  TweetCell.swift
//  TwitterCellStackViewDemo
//
//  Created by dasdom on 10.10.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet var handleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var tweetLabel: UILabel!
    @IBOutlet var quoteLabel: UILabel!
    @IBOutlet var quoteStackView: UIStackView!
    
    override func awakeFromNib() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellowColor()
        
        quoteStackView.insertSubview(view, belowSubview: quoteLabel)
        view.topAnchor.constraintEqualToAnchor(quoteStackView.topAnchor).active = true
        view.bottomAnchor.constraintEqualToAnchor(quoteStackView.bottomAnchor).active = true
        view.leadingAnchor.constraintEqualToAnchor(quoteStackView.leadingAnchor).active = true
        view.trailingAnchor.constraintEqualToAnchor(quoteStackView.trailingAnchor).active = true
    }
}
