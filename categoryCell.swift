//
//  categoryCell.swift
//  task2
//
//  Created by Support on 7/6/20.
//  Copyright © 2020 Support. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    func setCell(category: category){
        categoryImage.image = UIImage(named: category.image)
        categoryName.text = category.name
    }
}
