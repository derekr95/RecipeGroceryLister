//
//  RecipeItemsViewController.swift
//  RecipeGroceryLister
//
//  Created by Derek Russell on 10/14/18.
//  Copyright © 2018 Derek Russell. All rights reserved.
//

import UIKit

class RecipeItemsViewController: UITableViewController{
    var recipeItemStore: RecipeItemStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get hiegh of status bar
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top:statusBarHeight,left:0,bottom:0,right:0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return recipeItemStore.allRecipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeItemCell",for: indexPath) as! RecipeItemCell
        //get item object from datasource
        let recipe = recipeItemStore.allRecipes[indexPath.row]
        
        //Configure the cell with the Item
        cell.nameLabel.text = recipe.name
        //cell.recipeIDLabel.text = recipe.recipeID
        return cell
    }
    
}
