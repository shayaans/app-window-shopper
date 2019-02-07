//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by Shayaan Siddiqui on 2/1/19.
//  Copyright © 2019 OneOrangeTree LLC. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView()
    {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
