//
//  ViewController.swift
//  StrategyFactory
//
//  Created by roger on 2017/9/12.
//  Copyright © 2017年 roger. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITextFieldDelegate {

    var program: CashProgram = .normal
    var cc: CashContext?
    @IBOutlet weak var inputMoneyTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cc = CashContext(program: program)
        inputMoneyTextField.delegate = self
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.inputDone))
        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func inputDone() {
        inputMoneyTextField.resignFirstResponder()
    }
    
    func returnMoneyFromInput() -> Double {
        guard let money = Double(inputMoneyTextField.text!) else {
            return 0
        }
        return money
    }

    func updateResultLabel() {
        resultLabel.text = "\(cc!.getResult(money: returnMoneyFromInput()))"
    }
    
    @IBAction func programChange(_ sender: Any) {
        let segment:UISegmentedControl = sender as! UISegmentedControl
        switch segment.selectedSegmentIndex {
        case 0:
            program = .normal
        case 1:
            program = .discount
        case 2:
            program = .returnMoney
        default:
            program = .normal
        }
        cc = CashContext(program: program)
        updateResultLabel()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateResultLabel()
    }

}

