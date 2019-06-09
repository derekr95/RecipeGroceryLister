//
//  RecipeItemCell.swift
//  RecipeGroceryLister
//
//  Created by Derek Russell on 10/14/18.
//  Copyright © 2018 Derek Russell. All rights reserved.
//

import UIKit

class RecipeItemCell: UITableViewCell{
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var recipeIDLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.adjustsFontForContentSizeCategory = true

    }
}
