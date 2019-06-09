//
//  IngredientItem.swift
//  RecipeGroceryLister
//
//  Created by Derek Russell on 2/18/18.
//  Copyright © 2018 Derek Russell. All rights reserved.
//

import UIKit

class IngredientItem: NSObject{
    var name: String
    var amount: Double
    var amountUnit: String
    var image: UIImage?
    
    init(name: String, amount: Double, amountUnit: String){
        self.name = name
        self.amount = amount
        self.amountUnit = amountUnit
        self.image = nil
        super.init()
        
    }
}
