//
//  ReportViewController.swift
//  Chinta_MyJunkFoodTracker
//
//  Created by Raja Srikar Karthik Chinta on 3/7/18.
//  Copyright © 2018 s530460. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                AppDelegate.foodmodal.loadData()
       ReportTextView.text=AppDelegate.foodmodal.combinedReport()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ResetBTNAction(_ sender: Any) {
         AppDelegate.foodmodal.reset()
        ReportTextView.text = AppDelegate.foodmodal.combinedReport()
    }
    @IBOutlet weak var ReportTextView: UITextView!
    
    @IBAction func unwindFromTable(segue:UIStoryboardSegue){
        ReportTextView.text = AppDelegate.foodmodal.combinedReport()
    }
}
