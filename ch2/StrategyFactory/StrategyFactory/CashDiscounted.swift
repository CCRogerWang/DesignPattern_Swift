//
//  CashDiscounted.swift
//  StrategyFactory
//
//  Created by roger on 2017/9/12.
//  Copyright © 2017年 roger. All rights reserved.
//

import Foundation

class CashDiscounted: CashSuper, CashSuperDelegate {
    private var discounted: Double
    init(discounted: Double) {
        self.discounted = discounted
        super.init()
        super.delegate = self
    }
    
    func totalMoney(money: Double) -> Double {
        return money * discounted
    }
}
