//
//  CellTableViewCell.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 17/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension TableViewCell: UICollectionViewDelegate {
    
    
    
}

extension TableViewCell: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView.tag {
        case 0:
            return StaticData.sharedInstance.favorites.count
        case 1:
            return StaticData.sharedInstance.recipes.count
        default:
            return StaticData.sharedInstance.grains.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        let coffee: Coffee
        
        switch collectionView.tag {
        case 0:
            coffee = StaticData.sharedInstance.favorites[indexPath.row]
        case 1:
            coffee = StaticData.sharedInstance.recipes[indexPath.row]
        default:
            coffee = StaticData.sharedInstance.grains[indexPath.row]
        }
        
        cell.imgCoffee.image = coffee.icon
        cell.lblName.text = coffee.name
        //cell.lblPrepTime.text = "\(coffee.prepTime)"
        //cell.lblDifficulty.text = "\(coffee.difficulty)"
        
        return cell
    }
    
}

