//
//  Model.swift
//  Chinta_MyJunkFoodTracker
//
//  Created by Raja Srikar Karthik Chinta on 3/7/18.
//  Copyright © 2018 s530460. All rights reserved.
//

import UIKit
struct FoodData {
    var Name:String
    var Calories:Double
    var Tally:Int
    init(Name:String,Calories:Double,Tally:Int) {
        self.Name = Name
        self.Calories = Calories
        self.Tally = Tally
    }
}
class FoodRecorder {
    var Foods:[FoodData]
    
    init() {
        Foods=[]
    }

    func loadData() {
        Foods = [FoodData(Name: "Popcorn", Calories: 106, Tally: 0),FoodData(Name: "Coke", Calories: 140, Tally: 0),FoodData(Name: "Potato", Calories: 152, Tally: 0)]
    }
    func increaseTally(forItem i:Int){
        Foods[i].Tally += 1
    }
    func getCalories(forItem i:Int) -> Double {
        return Foods[i].Calories * Double(Foods[i].Tally)
    }
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(Foods[i].Name) is \(getCalories(forItem: i))."
    }
    func totalCalories() -> Double {
        var total:Double=0.0
        for i in 0..<Foods.count{
            total += getCalories(forItem: i)
        }
        return total
    }
    func combinedReport() -> String {
        var totalReport:String = ""
        for i in 0..<Foods.count {
            totalReport += "\(report(forItem: i))\n"
        }
        return "\(totalReport)Total calories consumed \(totalCalories())."
    }
    func reset(){
        for i in 0..<Foods.count {
            Foods[i].Tally = 0
        }
    }
    }

