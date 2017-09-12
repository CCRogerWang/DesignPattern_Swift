//
//  CashContext.swift
//  StrategyFactory
//
//  Created by roger on 2017/9/12.
//  Copyright © 2017年 roger. All rights reserved.
//
import Foundation

enum CashProgram {
    case normal
    case discount
    case returnMoney
}

class CashContext {
    private var cs: CashSuper
    
    init(program: CashProgram) {
        switch program{
        case .normal:
            self.cs = CashNormal() // 原價
        case .discount:
            self.cs = CashDiscounted(discounted: 0.8) //八折
        case .returnMoney:
            self.cs = CashReturn(satisfyMoney: 300, returnMoney: 100) // 300送100
        }
    }
    
    func getResult(money: Double) -> Double {
        return cs.resultMoney(money: money)
    }
}
