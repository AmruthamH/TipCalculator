//
//  ViewController.swift
//  Prework
//
//  Created by Himu Amrutham on 1/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var BillAmount: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var Total: UILabel!
    
    @IBOutlet weak var Tip: UILabel!
    @IBOutlet weak var tipRateLabel: UILabel!
    
    @IBOutlet weak var TipRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
    
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
    
   
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            view.backgroundColor = .white
            tipRateLabel.text = String(Int(15))
            BillAmount.textColor = .black
            Tip.textColor = .black
            TipRate.textColor = .black
            Total.textColor = .black
            billAmountTextField.textColor = .black
            tipAmountLabel.textColor = .black
            totalLabel.textColor = .black
            
            
            tipRateLabel.textColor = .black
            
            
        }
        else if sender.selectedSegmentIndex == 1{
            view.backgroundColor = .gray
            tipRateLabel.text = String(Int(18))
            BillAmount.textColor = .white
            Tip.textColor = .white
            TipRate.textColor = .white
            Total.textColor = .white
            billAmountTextField.textColor = .black
            tipAmountLabel.textColor = .white
            totalLabel.textColor = .white
            
            
            tipRateLabel.textColor = .white
            
        }
        else if sender.selectedSegmentIndex == 2{
            view.backgroundColor = .darkGray
            tipRateLabel.text = String(Int(20))
            BillAmount.textColor = .white
            Tip.textColor = .white
            Total.textColor = .white
            
            billAmountTextField.textColor = .black
            tipAmountLabel.textColor = .white
            totalLabel.textColor = .white
            TipRate.textColor = .white
            
            tipRateLabel.textColor = .white
            
        }
        
    }
    
}

