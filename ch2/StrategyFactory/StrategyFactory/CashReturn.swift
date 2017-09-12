//
//  CashReturn.swift
//  StrategyFactory
//
//  Created by roger on 2017/9/12.
//  Copyright © 2017年 roger. All rights reserved.
//

import Foundation

class CashReturn: CashSuper, CashSuperDelegate {
    private var satisfyMoney: Int
    private var returnMoney: Int
    init(satisfyMoney: Int, returnMoney: Int) {
        self.satisfyMoney = satisfyMoney
        self.returnMoney = returnMoney
        super.init()
        super.delegate = self
    }
    
    func totalMoney(money: Double) -> Double {
        if Int(money) < satisfyMoney {
            return money
        } else {
            return money - Double((Int(money)/satisfyMoney) * returnMoney)
        }
    }
}
