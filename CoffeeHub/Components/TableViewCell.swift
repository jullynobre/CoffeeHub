//
//  CellTableViewCell.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 17/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

