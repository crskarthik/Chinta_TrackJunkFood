//
//  AddItemViewController.swift
//  Chinta_MyJunkFoodTracker
//
//  Created by Raja Srikar Karthik Chinta on 3/8/18.
//  Copyright © 2018 s530460. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    @IBAction func ClearBTNAction(_ sender: Any) {
        if((FoodItemName.text != nil && FoodItemName.text != "") && (FoodItemCalories.text != nil && FoodItemCalories.text != "")){
            FoodItemName.text = nil
            FoodItemCalories.text = nil
        }
    }
    @IBOutlet weak var FoodItemName: UITextField!
    @IBOutlet weak var FoodItemCalories: UITextField!
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if((FoodItemName.text != nil && FoodItemName.text != "") && (FoodItemCalories.text != nil && FoodItemCalories.text != "")){
            AppDelegate.foodmodal.Foods.append(FoodData(Name: FoodItemName.text!, Calories: (Double)(FoodItemCalories.text!)!, Tally: 0))
        }
    }
    

}
