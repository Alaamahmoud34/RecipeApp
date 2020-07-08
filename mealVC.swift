//
//  mealVC.swift
//  task2
//
//  Created by Support on 7/6/20.
//  Copyright © 2020 Support. All rights reserved.
//

import UIKit

class mealVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var selectedCategory:String!
    let data = DataSet()
    var recipes:[Recipe]!
    var MealSelected:Recipe?
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory!)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return view.bounds.height/3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath) as? mealCell{
            cell.setCell(recipe: recipes[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        MealSelected = recipes[indexPath.row]
    performSegue(withIdentifier:"showInstructions", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let  recipeVc = segue.destination as?  instructionsVC{
            recipeVc.selectedMeal = MealSelected
        }
    }
}
