//
//  ViewController.swift
//  Concentration
//
//  Created by James Delemar on 11/20/17.
//  Copyright © 2017 James Delemar. All rights reserved.
//

import UIKit

// declaration of the class: Super class
// UIViewController knows how to control a UIView
class ViewController: UIViewController {
    // methods and instance variables go here

    // add instance variable (property) to keep track of flipCount
    // var flipCount: Int // Error - Class ViewController has no initializer - need initializer after adding this
    // need an initializer OR just set it
    // var flipCount: Int = 0
    // OR
    // infered by Swift
    // var flipCount = 0
    // In Swift you can put code after any property and it will run the code every time the property gets set - this is called a property observer
    // didSet is observing changes to flipCount
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    // var emojiChoices: Array<String> = ["👻","🎃","👻","🎃"]
    // OR
    var emojiChoices = ["👻","🎃","👻","🎃"]
    
    // ! doesn't have to be initalized?
    @IBOutlet weak var flipCountLabel: UILabel!
    
    // Array of buttons can also be written as Array<UIButton> (normal Swift syntax) but Arrays are so common this is what Swift chose on the drag and drop
    // editing the name below will disconnect it from the storyboard - you have to command click to rename
    @IBOutlet var cardButtons: [UIButton]!
    
    // @IBAction is a special directive that XCode puts in your code to allow it to put the circle at the line of the code to connect it to the view
    // func - keyword function
    // touchCard - name of method
    // (list of arguments)
        // sender names of parameter - external name and internal name
            // you can give just one name then the external and internal names would be the same
        // :UIButton - type of the argument
    // to signify a return value you would indicate returning an integer value like "touchCard(_ sender: UIButton) -> Int"
    // the _ (underbar) means there is no arguement - from Objective-C
    @IBAction func touchCard(_ sender: UIButton) {
        // Warning: variable 'cardNumber' was never used consider replacing with assingment to '_' or removing it
        // var cardNumber = cardButtons.index(of: sender)
        // let means it is a constant
        // the return value of index is optional not an int - optional has 2 states: set and not set (it is an enumeration)
        // let cardNumber = cardButtons.index(of: sender)
        // assume the optional is set and grab the associated value
        // let cardNumber = cardButtons.index(of: sender)!
        // conditionally looking for optional set - unwrapping them
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("choosen card was not in cardButtons")
        }
    }

    // arguments - external withEmoji & on, internal emoji & button
    // rule of thumb, when calling these functions it should sound like you're just talking regularly
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        flipCount += 1
        // \() - put something inside there to interpret as a string and embed it as a string
        // print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

