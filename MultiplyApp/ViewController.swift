//
//  ViewController.swift
//  MultiplyApp
//
//  Created by Ashwin Kasargode on 9/24/18.
//  Copyright © 2018 Ashwin Kasargode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func subtract(_ sender: Any) {
        let firstNumberInt: Int? = Int(firstNumber.text!)
        let secondNumberInt: Int? = Int(secondNumber.text!)
        let answer = firstNumberInt! - secondNumberInt!
        let answerText = String(answer)
        label.text = answerText
        displayAnswer(answer: answer)
        
    }
    
    @IBAction func add(_ sender: UIButton) {
        let firstNumberInt: Int? = Int(firstNumber.text!)
        let secondNumberInt: Int? = Int(secondNumber.text!)
        let answer = firstNumberInt! + secondNumberInt!
        let answerText = String(answer)
        label.text = answerText
        displayAnswer(answer: answer)
        
    }
    
    
    @IBAction func multiply(_ sender: UIButton) {
        
        let firstNumberInt: Int? = Int(firstNumber.text!)
        let secondNumberInt: Int? = Int(secondNumber.text!)
        let answer = firstNumberInt! * secondNumberInt!
        let answerText = String(answer)
        label.text = answerText
        
        displayAnswer(answer: answer)
        
    }
    
    
    @IBAction func divide(_ sender: UIButton) {
        let firstNumberInt: Int? = Int(firstNumber.text!)
        let secondNumberInt: Int? = Int(secondNumber.text!)
        let answer = firstNumberInt! / secondNumberInt!
        displayAnswer(answer: answer)
    }
    
    func displayAnswer(answer: Int) {
        let answerText = String(answer)
        label.text = answerText
        if answer == 64 {
            imageView.image = UIImage(named: "yoshi")
        }
        else if answer % 2 == 1 {
            imageView.image = UIImage(named: "mugshotpic")
        }
        else if answer % 2 == 0 {
            imageView.image = UIImage(named: "theoffice")
        }

    }
    
    
    
    
    
    
}


