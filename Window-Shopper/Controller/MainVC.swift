//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Shayaan Siddiqui on 2/1/19.
//  Copyright © 2019 OneOrangeTree LLC. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultsLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.caclculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultsLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultsLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    @objc func caclculate() {
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultsLbl.isHidden = false
                hoursLbl.isHidden = false
                resultsLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
}

