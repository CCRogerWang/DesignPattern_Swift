//
//  CashSuper.swift
//  StrategyFactory
//
//  Created by roger on 2017/9/12.
//  Copyright © 2017年 roger. All rights reserved.
//
import Foundation

protocol CashSuperDelegate: class {
    func totalMoney(money: Double) -> Double
}

class CashSuper {
    
    weak var delegate: CashSuperDelegate!
    func resultMoney(money: Double) -> Double {
        return self.delegate.totalMoney(money: money)
    }
}




