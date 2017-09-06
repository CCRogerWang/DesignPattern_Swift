//
//  Operation.swift
//  SimpleFactory
//
//  Created by Roger on 2017/9/5.
//  Copyright © 2017年 Roger. All rights reserved.
//

import UIKit
protocol GetResultDelegate {
    func getResult() -> Double
}

class Operation: NSObject {
    private var _numA: Double = 0
    private var _numB: Double = 0
    var delegate: GetResultDelegate!
    var NumA: Double {
        set {
            self._numA = newValue
        }
        
        get {
            return self._numA
        }
    }
    
    var NumB: Double {
        set {
            
            
            self._numB = newValue
        }
        
        get {
            return self._numB
        }
    }
    
    public func calculate() -> Double {
        return delegate.getResult()
    }
}

class OperationAdd: Operation, GetResultDelegate {
    override init() {
        super.init()
        delegate = self
    }
    func getResult() -> Double {
        return NumA + NumB
    }
}

class OperationSub: Operation, GetResultDelegate {
    override init() {
        super.init()
        delegate = self
    }
    func getResult() -> Double {
        return NumA - NumB
    }
}

class OperationMul: Operation, GetResultDelegate {
    override init() {
        super.init()
        delegate = self
    }
    func getResult() -> Double {
        return NumA * NumB
    }
}

enum ErrorKind: Error {
    case divideZero
}

class OperationDiv: Operation, GetResultDelegate {
    override init() {
        super.init()
        delegate = self
    }
    func getResult() -> Double {
        do {
            if NumB == 0 {
                throw ErrorKind.divideZero
            }
        } catch {
            print("Can't divide Zero")
        }
        
        return NumA / NumB
    }
}


