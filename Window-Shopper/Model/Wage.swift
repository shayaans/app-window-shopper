//
//  Wage.swift
//  Window-Shopper
//
//  Created by Shayaan Siddiqui on 2/6/19.
//  Copyright © 2019 OneOrangeTree LLC. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
