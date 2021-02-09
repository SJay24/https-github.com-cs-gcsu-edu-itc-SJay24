//
//  ViewController.swift
//  Tip Calculator
//
//  Created by samuel johnson3 on 2/8/21.
//  Copyright © 2021 Sam Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipAmt: UITextField!
    @IBOutlet weak var totAmt: UITextField!
    @IBOutlet weak var billAmt: UITextField!
    
    @IBAction func but15(_ sender: Any) {
        let temp=(billAmt.text!)
        let num = Double(temp)
        if(num == nil)
        {
            return
        }
        else if(billAmt.text!.isEmpty){
            return
        }
        else{
            let amount:Double = Double(billAmt.text!)!
            let tipCalc:Double = amount * 0.15
            let tip = String(format: "%.2f", tipCalc)
            tipAmt.text="$"+tip
            let total:Double=tipCalc+amount
            let bill = String(format: "%.2f", total)
            totAmt.text="$"+bill
        }
    }
    @IBAction func but18(_ sender: Any) {
        let temp=(billAmt.text!)
        let num = Double(temp)
        if(num == nil)
        {
            return
        }
        else if(billAmt.text!.isEmpty){
            return
        }

        else{
            let amount:Double = Double(billAmt.text!)!
            let tipCalc:Double = amount * 0.18
            let tip = String(format: "%.2f", tipCalc)
            tipAmt.text="$"+tip
            let total:Double=tipCalc+amount
            let bill = String(format: "%.2f", total)
            totAmt.text="$"+bill
        }
    }
    @IBAction func but20(_ sender: Any) {
        let temp=(billAmt.text!)
        let num = Double(temp)
        if(num == nil)
        {
            return
        }
        else if(billAmt.text!.isEmpty){
            return
        }

        else{
            let amount:Double = Double(billAmt.text!)!
            let tipCalc:Double = amount * 0.20
            let tip = String(format: "%.2f", tipCalc)
            tipAmt.text="$"+tip
            let total:Double=tipCalc+amount
            let bill = String(format: "%.2f", total)
            totAmt.text="$"+bill
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

}

