//
//  CashNormal.swift
//  StrategyFactory
//
//  Created by roger on 2017/9/12.
//  Copyright © 2017年 roger. All rights reserved.
//

import Foundation

class CashNormal: CashSuper, CashSuperDelegate {
    override init() {
        super.init()
        super.delegate = self
    }
    
    func totalMoney(money: Double) -> Double {
        return money
    }
}
