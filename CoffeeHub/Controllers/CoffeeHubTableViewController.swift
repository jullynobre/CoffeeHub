//
//  CoffeeHubTableViewController.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 17/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class CoffeeHubTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
       
        switch indexPath.section {
        case 0:
            cell.label.text = "Favorites"
        case 1:
            cell.label.text = "Recipes"
        default:
            cell.label.text = "Grains"
        }
        
        cell.collectionView.tag = indexPath.section
        cell.collectionView.delegate = self
        return cell
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
extension CoffeeHubTableViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let coffee: Coffee
        var identifier: String? = nil
        
        switch collectionView.tag {
        case 0:
            coffee = StaticData.sharedInstance.favorites[indexPath.row]
        case 1:
            coffee = StaticData.sharedInstance.recipes[indexPath.row]
            identifier = "RecipeDetails"
        default:
            coffee = StaticData.sharedInstance.grains[indexPath.row]
            identifier = "GrainDetails"
        }
        
        if identifier == nil{
            if coffee is Recipe{
                identifier = "RecipeDetails"
            } else{
                identifier = "GrainDetails"
            }
        }
        
        self.performSegue(withIdentifier: identifier!, sender: coffee)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GrainDetails"{
            if let controller = segue.destination as? GrainViewController{
                let grain = sender as! Grain
                controller.grain = grain
            }
        }
        if segue.identifier == "RecipeDetails"{
            if let controller = segue.destination as? RecipeViewController{
                let recipe = sender as! Recipe
                controller.recipe = recipe
            }
        }
    }
}

