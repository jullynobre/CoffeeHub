//
//  RecipeViewController.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 18/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    var recipe: Recipe?
    
    @IBOutlet weak var imgRecipe: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDurarion: UILabel!
    @IBOutlet weak var lblDifficulty: UILabel!
    @IBOutlet weak var lblIgredients: UILabel!
    @IBOutlet weak var lblPrepareMode: UILabel!
    
    //@IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.scrollView.contentSize.width = self.scrollView.frame.size.width - 10
        
        if let unwrappedRecipe = recipe{
            self.imgRecipe.image = unwrappedRecipe.icon
            self.lblName.text = unwrappedRecipe.name
            self.lblDurarion.text = "\(unwrappedRecipe.prepTime)"
            self.lblIgredients.text = "Igredients..."
            self.lblPrepareMode.text = unwrappedRecipe.prepMethod
            self.lblDifficulty.text = "\(unwrappedRecipe.difficulty)"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
