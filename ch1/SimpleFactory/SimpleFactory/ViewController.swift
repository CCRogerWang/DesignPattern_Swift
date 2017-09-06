//
//  ViewController.swift
//  SimpleFactory
//
//  Created by Roger on 2017/9/5.
//  Copyright © 2017年 Roger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Start!")
        var oper: Operation?
        oper = OperationFactory.createOperate(operate: "+")
        oper?.NumA = 1
        oper?.NumB = 2
        print(oper?.calculate() ?? "Default")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

