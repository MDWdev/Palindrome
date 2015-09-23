//
//  ViewController.swift
//  Palindrome
//
//  Created by Melissa on 9/23/15.
//  Copyright © 2015 Melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var wordToCompare = ""
    var reverseWord = ""

    @IBOutlet weak var palindromeResultLabel: UILabel!
    @IBOutlet weak var userInputTextField: UITextField!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func storeWordAsPalindrome() {
        wordToCompare = userInputTextField.text!
        reverseWord = ""
        for scalar in wordToCompare.unicodeScalars {
            let asString = "\(scalar)"
            reverseWord = asString + reverseWord
        }
        
    }
  
    @IBAction func checkWordButton() {
        
        storeWordAsPalindrome()
        
        
        if wordToCompare == reverseWord {
            palindromeResultLabel.text = ("\(wordToCompare) is a palindrome!")
        } else {
            palindromeResultLabel.text = ("\(wordToCompare) is NOT a palindrome :(")
        }
        
    }
   

}

