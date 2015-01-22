//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Austen Allred on 1/21/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var totalBillField: UITextField!
    @IBOutlet var tipAmountSegmentedControl: UISegmentedControl!
    @IBOutlet var tipTotalLabel: UILabel!
    @IBOutlet var calculateTipButton: UIButton!
    @IBAction func calculateTip(sender: AnyObject) {
        var userInput = totalBillField.text as NSString
        var userInputFloat = userInput.floatValue
        var index: Int = tipAmountSegmentedControl.selectedSegmentIndex
        var tipRate: Float = 0.15
        if index == 0 {
            tipRate = 0.15
        }
        else if index == 1 {
            tipRate = 0.20
        }
        else {
            tipRate = 0.25
        }
        var tip: Float = userInputFloat * tipRate
        tipTotalLabel.text = "$\(tip)"
        
       println("user input is \(userInput)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

