//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Brendan McNamra on 10/2/14.
//  Copyright (c) 2014 Brendan McNamara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNumberTextField: UITextField!
    
    
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addButton.addTarget(self, action: Selector("addStuff"), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func addStuff() {
        
        var num1 = firstNumberTextField.text.toInt()
        var num2 = secondNumberTextField.text.toInt()
        
        
        if let _num1 = num1 {
            if let _num2 = num2 {
                resultLabel.text = "The result is \(_num1 + _num2)" as NSString
            }
            else {
                resultLabel.text = "Please enter numbers" as NSString
            }
        }
        else {
            resultLabel.text = "Please enter numbers" as NSString
        }
    }
}


