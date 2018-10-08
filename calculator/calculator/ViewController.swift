//
//  ViewController.swift
//  calculator
//
//  Created by Ryan on 2018-09-21.
//  Copyright © 2018 Ryan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet private var oneButton: UIButton!
    @IBOutlet private var twoButton: UIButton!
    @IBOutlet private var threeButton: UIButton!
    @IBOutlet private var fourButton: UIButton!
    @IBOutlet private var fiveButton: UIButton!
    @IBOutlet private var textInput: UITextField!
    @IBOutlet private var clear: UIButton!
    private var something = " "
    private var something2 = " "
    private var oneVal = 0.0
    private var twoVal = 0.0
    private var result = 0.0
    private var currentSign = ""
    private var decVal = false
    private var decVal2 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Number one button press
    @IBAction private func oneClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "1"
            textInput.placeholder = something
        } else {
            something2 += "1"
            something += "1"
            textInput.placeholder = something
        }
    }
    
    // Number two button press
    @IBAction func twoClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "2"
            textInput.placeholder = something
        } else {
            something2 += "2"
            something += "2"
            textInput.placeholder = something
        }
    }
    
    // Number three button press
    @IBAction func threeClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "3"
            textInput.placeholder = something
        } else {
            something2 += "3"
            something += "3"
            textInput.placeholder = something
        }
    }
    
    // Number four button press
    @IBAction func fourClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "4"
            textInput.placeholder = something
        } else {
            something2 += "4"
            something += "4"
            textInput.placeholder = something
        }
    }
    
    // Number five button press
    @IBAction func fiveClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "5"
            textInput.placeholder = something
        } else {
            something2 += "5"
            something += "5"
            textInput.placeholder = something
        }
    }
    
    // Number six button press
    @IBAction func sixClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "6"
            textInput.placeholder = something
        } else {
            something2 += "6"
            something += "6"
            textInput.placeholder = something
        }
    }
    
    // Number seven button press
    @IBAction func sevenClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "7"
            textInput.placeholder = something
        } else {
            something2 += "7"
            something += "7"
            textInput.placeholder = something
        }
    }
    
    // Number eight button click
    @IBAction func eightClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "8"
            textInput.placeholder = something
        } else {
            something2 += "8"
            something += "8"
            textInput.placeholder = something
        }
    }
    
    // Number nine button click
    @IBAction func nineClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "9"
            textInput.placeholder = something
        } else {
            something2 += "9"
            something += "9"
            textInput.placeholder = something
        }
    }
    
    // Number zero button press
    @IBAction func zeroClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            something += "0"
            textInput.placeholder = something
        } else {
            something2 += "0"
            something += "0"
            textInput.placeholder = something
        }
    }
    
    // Plus sign button press
    @IBAction func plusClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            oneVal = (something as NSString).doubleValue
            something += "+"
            currentSign = "plus"
            textInput.placeholder = something
        }
    }
    
    // Minus sign button press
    @IBAction func minusClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            oneVal = (something as NSString).doubleValue
            something += "-"
            currentSign = "minus"
            textInput.placeholder = something
        }
    }
    
    // Multiple sign button press
    @IBAction func multClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            oneVal = (something as NSString).doubleValue
            something += "x"
            currentSign = "multiple"
            textInput.placeholder = something
        }
    }
    
    // Divide sign button press
    @IBAction func divideClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            oneVal = (something as NSString).doubleValue
            something += "/"
            currentSign = "divide"
            textInput.placeholder = something
        }
    }
    
    // Equal sign button press
    @IBAction func equalClick(_ sender: UIButton) {
        twoVal = (something2 as NSString).doubleValue
        something += "="
        textInput.placeholder = something
        compute()
    }
    
    // Decimal sign button press
    @IBAction func decClick(_ sender: UIButton) {
        if(currentSign.isEmpty) {
            if(decVal == false){
                decVal = true
                something += "."
                textInput.placeholder = something
            }
        } else {
            if(decVal2 == false) {
                decVal2 = true
                something2 += "."
                something += "."
                textInput.placeholder = something
            }
        }
    }
    
    @IBAction private func textInput(_ sender: Any) {
        
    }
    
    // Computes the two numbers together with their respected sign
    private func compute() {
        print("compute function")
        print(oneVal)
        print(twoVal)
        if(currentSign == "plus") {
            result = oneVal + twoVal
            something = String(format:"%.2f", result)
            textInput.placeholder = something
            textToSpeech(string: something)
        } else if(currentSign == "minus") {
            result = oneVal - twoVal
            something = String(format:"%.2f", result)
            textInput.placeholder = something
            textToSpeech(string: something)
        } else if(currentSign == "multiple") {
            result = oneVal * twoVal
            something = String(format:"%.2f", result)
            textInput.placeholder = something
            textToSpeech(string: something)
        } else if(currentSign == "divide") {
            result = oneVal / twoVal
            something = String(format:"%.2f", result)
            textInput.placeholder = something
            textToSpeech(string: something)
        } else {
            print("Something broke")
        }
    }
    
    // Text to speech function
    private func textToSpeech(string: String){
        let utterance = AVSpeechUtterance(string: string)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synth = AVSpeechSynthesizer()
        synth.speak(utterance)
    }
    
    // Clears the Text Input field
    @IBAction private func clear(_ sender: UIButton) {
        something = " "
        something2 = " "
        oneVal = 0.0
        twoVal = 0.0
        result = 0.0
        currentSign = ""
        decVal = false
        decVal2 = false
        textInput.placeholder = something
    }
}

