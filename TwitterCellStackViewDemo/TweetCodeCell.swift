//
//  TweetCodeCell.swift
//  TwitterCellStackViewDemo
//
//  Created by dasdom on 14.10.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class TweetCodeCell: UITableViewCell {

    let avatarImageView: UIImageView
    let handleLabel: UILabel
    let dateLabel: UILabel
    let tweetLabel: UILabel
    let quoteHandle: UILabel
    let quoteLabel: UILabel
    let quoteStackView: UIStackView
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        avatarImageView = UIImageView()
        avatarImageView.backgroundColor = .brownColor()
        
        handleLabel = UILabel()
        handleLabel.font = UIFont.boldSystemFontOfSize(14)
        
        dateLabel = UILabel()
        dateLabel.font = UIFont.boldSystemFontOfSize(14)
        
        let handleDateStackView = UIStackView(arrangedSubviews: [handleLabel, dateLabel])
        
        tweetLabel = UILabel()
        tweetLabel.numberOfLines = 0
        
        quoteHandle = UILabel()
        quoteHandle.font = UIFont.boldSystemFontOfSize(13)
        
        quoteLabel = UILabel()
        quoteLabel.numberOfLines = 0
        quoteLabel.font = UIFont.systemFontOfSize(13)
        
        quoteStackView = UIStackView(arrangedSubviews: [quoteHandle, quoteLabel])
        quoteStackView.axis = .Vertical
        quoteStackView.alignment = .Center
//        quoteStackView.spacing = 2
        
        let quoteStackViewBackgroundView = UIView()
        quoteStackViewBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        quoteStackViewBackgroundView.backgroundColor = .lightGrayColor()
        
        let tweetStackView = UIStackView(arrangedSubviews: [tweetLabel, quoteStackView])
        tweetStackView.axis = .Vertical
        tweetStackView.spacing = 5
        
        let textStackView = UIStackView(arrangedSubviews: [handleDateStackView, tweetStackView])
        textStackView.axis = .Vertical
        textStackView.spacing = 3
        
        let stackView = UIStackView(arrangedSubviews: [avatarImageView, textStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .Top
        stackView.spacing = 5
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .whiteColor()
        
        contentView.addSubview(stackView)
        quoteStackView.insertSubview(quoteStackViewBackgroundView, atIndex: 0)
        
        let views = ["stackView": stackView, "quoteBackground": quoteStackViewBackgroundView, "quoteLabel": quoteLabel]
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("|-10-[stackView]-|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[stackView]-(10@751)-|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("|[quoteBackground]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[quoteBackground]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("|-10-[quoteLabel]-10-|", options: [], metrics: nil, views: views)
        layoutConstraints.append(avatarImageView.widthAnchor.constraintEqualToConstant(80))
        layoutConstraints.append(avatarImageView.heightAnchor.constraintEqualToConstant(80))
        layoutConstraints.append(quoteLabel.trailingAnchor.constraintEqualToAnchor(quoteHandle.trailingAnchor))
        layoutConstraints.append(quoteLabel.leadingAnchor.constraintEqualToAnchor(quoteHandle.leadingAnchor))
        NSLayoutConstraint.activateConstraints(layoutConstraints)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
