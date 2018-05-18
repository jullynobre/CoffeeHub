//
//  DetailsViewController.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 17/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class GrainViewController: UIViewController {

    var grain: Grain?
    
    @IBOutlet weak var imgCoffee: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let unwrappedGrain = self.grain{
            self.title = unwrappedGrain.name
            
            self.imgCoffee.image = unwrappedGrain.icon
        }
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
