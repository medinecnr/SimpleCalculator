//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Medine Çınar on 8.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Float(firstText.text!){
            if let secondNumber = Float(secondText.text!){
                let result = firstNumber + secondNumber
                resultLabel.text = formatResult(result)
            }else {
                resultLabel.text = "You can use only numbers."
            }
        }else {
            resultLabel.text = "You can use only numbers."
        }
    }
        
        @IBAction func minusClicked(_ sender: Any) {
            if let firstNumber = Float(firstText.text!){
                if let secondNumber = Float(secondText.text!){
                    let result = firstNumber - secondNumber
                    resultLabel.text = formatResult(result)
                }else {
                    resultLabel.text = "You can use only numbers."
                }
            }else {
                resultLabel.text = "You can use only numbers."
            }
        }
        
        @IBAction func multiplyClicked(_ sender: Any) {
            if let firstNumber = Float(firstText.text!){
                if let secondNumber = Float(secondText.text!){
                    let result = firstNumber * secondNumber
                    resultLabel.text = formatResult(result)
                }else {
                    resultLabel.text = "You can use only numbers."
                }
            }else {
                resultLabel.text = "You can use only numbers."
            }
        }
        
        @IBAction func divideClicked(_ sender: Any) {
            if let firstNumber = Float(firstText.text!){
                if let secondNumber = Float(secondText.text!){
                    let result = firstNumber / secondNumber
                    resultLabel.text = formatResult(result)
                }else {
                    resultLabel.text = "You can use only numbers."
                }
            }else {
                resultLabel.text = "You can use only numbers."
            }
        }
    
    func formatResult(_ result: Float) -> String {
        if result == floor(result) {
            // Sonuç tam sayı ise
            return String(Int(result))
        } else {
            // Sonuç kesirli ise
            return String(result)
        }
    }
    }
    

