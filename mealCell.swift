//
//  mealCell.swift
//  task2
//
//  Created by Support on 7/6/20.
//  Copyright © 2020 Support. All rights reserved.
//

import UIKit

class mealCell: UITableViewCell {

    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var mealName: UILabel!
    
    func setCell(recipe:Recipe)
    {
        mealImage.image = UIImage(named: recipe.imageName)
        mealName.text = recipe.title
    }
}
