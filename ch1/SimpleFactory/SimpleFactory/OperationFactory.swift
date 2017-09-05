//
//  OperationFactory.swift
//  SimpleFactory
//
//  Created by Roger on 2017/9/5.
//  Copyright © 2017年 Roger. All rights reserved.
//

import UIKit

class OperationFactory: NSObject {
    public static func createOperate(operate: String) -> Operation{
        var oper:Operation?
        switch operate {
        case "+":
            oper = OperationAdd()
        case "-":
            oper = OperationSub()
        case "*":
            oper = OperationMul()
        case "/":
            oper = OperationDiv()
        default:
            break;
        }
        return oper!
    }
}
