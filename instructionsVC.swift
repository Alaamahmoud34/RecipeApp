//
//  instructionsVC.swift
//  task2
//
//  Created by Support on 7/6/20.
//  Copyright © 2020 Support. All rights reserved.
//

import UIKit

class instructionsVC: UIViewController {

    var selectedMeal : Recipe!
    
    
    @IBOutlet weak var mealImage: UIImageView!
    
    @IBOutlet weak var mealTitle: UILabel!
    
    @IBOutlet weak var mealInstructions: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mealImage.image = UIImage(named: selectedMeal.imageName)
        mealTitle.text = selectedMeal.title
        mealInstructions.text = selectedMeal.instructions
    }
    

    

}
