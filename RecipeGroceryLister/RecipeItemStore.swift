//
//  RecipeItemStore.swift
//  RecipeGroceryLister
//
//  Created by Derek Russell on 3/18/18.
//  Copyright © 2018 Derek Russell. All rights reserved.
//

import UIKit

class RecipeItemStore{
    var allRecipes = [RecipeItem]()
    
    @discardableResult func createItem() -> RecipeItem{
        //let newItem = RecipeItem(name: "test", recipeID: nil)
        let newItem = RecipeItem(random: true)
        allRecipes.append(newItem)
        return newItem
    }
    
    func removeRecipe(_ recipe: RecipeItem){
        if let index = allRecipes.index(of: recipe){
            allRecipes.remove(at: index)
        }
    }
    func moveItem(from fromIndex: Int, to toIndex: Int){
        if fromIndex == toIndex{
            return
        }
        let movedItem = allRecipes[fromIndex]
        allRecipes.remove(at: fromIndex)
        allRecipes.insert(movedItem, at: toIndex)
    }
    
    init(){
        for _ in 0..<5{
            createItem()
        }
    }
    
}
