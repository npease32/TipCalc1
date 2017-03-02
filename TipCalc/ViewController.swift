//
//  ViewController.swift
//  TipCalc
//
//  Created by Nicholas Pease on 3/1/17.
//  Copyright © 2017 Nicholas Pease. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipAmtLbl: UILabel!
    @IBOutlet weak var totAmyLbl: UILabel!
    @IBOutlet weak var billFld: UITextField!
    @IBOutlet weak var tipAmtSel: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    @IBAction func tipC2(_ sender: Any) {
        calc()
    }
    @IBAction func tipC1(_ sender: Any) {
        calc()
    }
    func calc() {
        let tips = [0.18, 0.20, 0.22]
        let bill = Double(billFld.text!) ?? 0
        
        let tipAmt = tips[tipAmtSel.selectedSegmentIndex]*bill
        let total = tipAmt + bill
        
        tipAmtLbl.text = String(format: "$%.2f",  tipAmt)
        totAmyLbl.text = String(format: "$%.2f",   total)
    }
    
}

