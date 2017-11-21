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
        // print on the console
        print("We have a ghost")
        // reads "flip the card with the emoji 👻 on the sender button"
        flipCard(withEmoji: "👻", on: sender)
    }
    
    // arguments - external withEmoji & on, internal emoji & button
    // rule of thumb, when calling these functions it should sound like you're just talking regularly
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

