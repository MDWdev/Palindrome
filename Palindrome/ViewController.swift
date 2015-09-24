//
//  ViewController.swift
//  Palindrome
//
//  Created by Melissa on 9/23/15.
//  Copyright © 2015 Melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // initialize variables
    var wordToCompare = ""
    var reverseWord = ""
    
    // outlets for label and text field
    @IBOutlet weak var palindromeResultLabel: UILabel!
    @IBOutlet weak var userInputTextField: UITextField!
    
    // function that stores the user input in variables
    func storeWordAsPalindrome() {
        wordToCompare = userInputTextField.text!.lowercaseString
        reverseWord = ""
        
        // using Unicode Scalars in a for in loop with a temp constant to
        // store the reverse order of the input in associated variable
        for scalar in wordToCompare.unicodeScalars {
            let asString = "\(scalar)"
            reverseWord = asString + reverseWord
        }
        
    }
  
    // action function when user clicks the button
    @IBAction func checkWordButton() {
        // call the function that stores the user input to variables
        storeWordAsPalindrome()
        
        // if the values of original word variable and reverse word variable
        // are the same, provide feedback to user
        // if not, provide appropriate feedback
        if wordToCompare == reverseWord {
            palindromeResultLabel.text = ("\(wordToCompare) is a palindrome!")
        } else {
            palindromeResultLabel.text = ("\(wordToCompare) is NOT a palindrome :(")
        }
        
    }
   

}

