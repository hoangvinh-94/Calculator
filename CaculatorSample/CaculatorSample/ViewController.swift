//
//  ViewController.swift
//  CaculatorSample
//
//  Created by healer on 4/15/17.
//  Copyright © 2017 healer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    var flag = true
    var flag1 = false
     var operation = 0
    var previousNumber:Double = 0
    var currentNumber:Double = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if (flag && !flag1){
            labelResult.text = String(sender.tag)
            currentNumber = Double (labelResult.text!)!
            flag = false
        }
        else if (flag1){
            
                labelResult.text! += String(sender.tag)
                currentNumber = Double (labelResult.text!)!
            }
            
        }

    @IBAction func PhepToan(_ sender: UIButton) {
        if labelResult.text != "" && sender.tag != 10 && sender.tag != 20 {
            flag1 = false
            previousNumber = Double(labelResult.text!)!
        
            if sender.tag == 11{
                labelResult.text! += "."
                flag1 = true
            }
            if sender.tag == 12{
                labelResult.text! += "+"
            }
            if sender.tag == 13{
                labelResult.text! += "-"
            }
            if sender.tag == 14{
                labelResult.text! += "*"
            }
            if sender.tag == 15{
                labelResult.text! += "/"
            }
            
            operation = sender.tag
            flag = true
            
        }
        else if sender.tag == 10 {
            //flagDauBang = true;
            if operation == 12 {
                labelResult.text = String(previousNumber + currentNumber)
            }
            if operation == 13 {
                labelResult.text = String(previousNumber - currentNumber)
            }
            if operation == 14 {
                labelResult.text = String(previousNumber * currentNumber)
            }
            if operation == 15 {
                labelResult.text = String(previousNumber/currentNumber)
            }
        }
        else if sender.tag == 20 {
            labelResult.text = ""
            currentNumber = 0
            previousNumber = 0
            operation = 0
            flag = true
            flag1 = false
        }

    }
}

