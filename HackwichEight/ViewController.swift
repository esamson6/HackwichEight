//
//  ViewController.swift
//  HackwichEight
//
//  Created by Erin Samson on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 50
    var targetValue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.value = 50
        //currentValue = Int(slider.value)
        //targetValue = Int.random(in: 0...100)
        //call startNewRound
        startNewRound()
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        //let's print the value of the slider
        print("The value of the slider is:\(slider.value)")
        currentValue = Int(slider.value)
        //int has an instance method called random
        //targetValue = Int.random(in: 0...100)
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "Your guess is \(currentValue)" + "\n The Target Value for this round was: \(targetValue)"
        
    //1. create alert view
        let alert = UIAlertController(title:"Guess the Number Game", message: message, preferredStyle: .alert)
    //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "New Round", style:.default, handler: nil)
     //3. add the button to the alertview
        alert.addAction(action)
      //4. present alertview on the screen
        present(alert,animated: true, completion: nil)
       startNewRound()
    }
    //function to start a new round so that we get a new target value
    
    func startNewRound() {
        let randomNumber = Int.random(in: 0...100)
        targetLabel.text = String(randomNumber)
    
    
    
    }
    
}

