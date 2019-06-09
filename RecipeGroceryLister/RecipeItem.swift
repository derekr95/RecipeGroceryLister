//
//  RecipeItem.swift
//  RecipeGroceryLister
//
//  Created by Derek Russell on 2/18/18.
//  Copyright © 2018 Derek Russell. All rights reserved.
//

import UIKit

class RecipeItem: NSObject{
    var name: String
    var picture: UIImage?
    var recipeID: String?
    var cookTime: String?
    var calories: String?
    var amountFed: Int?
    
    
    var ingredients = [IngredientItem]()
    
    init(name: String, picture: UIImage?, recipeID: String?){
        self.name = name
        self.picture = picture
        self.recipeID = recipeID
        
        super.init()
    }
    init(name: String, recipeID: String?){
        self.name = name
        self.picture = nil
        self.recipeID = recipeID
    }
    convenience init(random: Bool = false){
        if random {
            let recipeMeat = ["steak", "chicken","hamburglers","catFood","bannana"]
            let adjectives = ["Fried", "Grilled", "Steamed", "baked"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomMeat = recipeMeat[Int(idx)]
            
            idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomMeat)"
            
            let randomRecipeID = UUID().uuidString.components(separatedBy: "-").first!
            self.init(name: randomName, recipeID: randomRecipeID)
            
        }
        else{
            self.init(name: "", recipeID: nil)
        }
    }
    @discardableResult func addIngredient(ingredient: IngredientItem )->IngredientItem{
        self.ingredients.append(ingredient)
        return ingredient
    }
    
    func getIngredients()->[IngredientItem]{
        return ingredients
    }
    
    
    
}
