//
//  CollectionViewCell.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 17/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgCoffee: UIImageView!
    @IBOutlet weak var lblPrepTime: UILabel!
    @IBOutlet weak var lblDifficulty: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.containerView.layer.masksToBounds = true
        //self.containerView.layer.borderWidth = 0.0
        //self.containerView.layer.borderColor = UIColor.brown.cgColor
        self.containerView.layer.cornerRadius = 15.0
        
//        self.containerView.layer.borderWidth = 1.0
//        self.containerView.layer.borderColor = UIColor.clear.cgColor
//
//        self.containerView.layer.shadowColor = UIColor.lightGray.cgColor
//        self.containerView.layer.shadowOffset = CGSize(width:5.0,height: 5.0)
//        self.containerView.layer.shadowRadius = 1.5
//        self.containerView.layer.shadowOpacity = 3.0
//        self.layer.masksToBounds = false;
//        self.containerView.layer.shadowPath = UIBezierPath(roundedRect:self.containerView.bounds, cornerRadius:self.containerView.layer.cornerRadius).cgPath
    }
}
