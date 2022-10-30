//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by bcakyz on 29/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumClick(_ sender: Any) {
        
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
             
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
                
            }
        }
        
    }
    @IBAction func minusClick(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
                
            }
        }
    }
    
    @IBAction func multipyClick(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
                
            }
        }
        
    }
    @IBAction func divideClick(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
                
            }
        }
        
    }
    
    


}

