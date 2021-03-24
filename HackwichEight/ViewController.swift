//
//  ViewController.swift
//  HackwichEight
//
//  Created by Erin Samson on 3/9/21.
//

import UIKit

class ViewController: UIViewController {
  
   
    
    //create a target label for the number to randomly change for the guessing game
    @IBOutlet weak var targetLabel: UILabel!
    //when the slider is moved the player is guessing as close or exactly the same randomly changed number.
    @IBOutlet weak var slider: UISlider!
    
        //on the slider we needed to give value to the movement of the slider
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
        
        //set image to slider
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        //let's print the value of the slider
        print("The value of the slider is:\(slider.value)")
        currentValue = Int(slider.value)
        //int has an instance method called random
        //targetValue = Int.random(in: 0...100)
    }
    
         //function to start a new round so that we get a new target value
         //When the new round button is pressed the random number should change for the new game
         func startNewRound() {
        //to make the target number change into random numbers
         let randomNumber = Int.random(in: 0...100)
        //this target number or random number should be close to my guess or exactly same to my guess
        targetLabel.text = String(randomNumber)
            targetValue = Int.random(in: 0...100)
            
    
    }
    

    @IBAction func myGuessButtonPressed(_ sender: Any) {
      //your guess will be on the screen with the number that you have selected with the use of moving the slider.
        let message = "Your guess is \(currentValue)" + "\n The Target Value for this round was: \(targetValue)"
    //1. create alert view
        let alert = UIAlertController(title:"Guess the Number Game", message: message, preferredStyle: .alert)
    //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "New Round", style:.default, handler: nil)
     //3. add the button to the alertview
        alert.addAction(action)
      //4. present alertview on the screen
        present(alert,animated: true, completion: nil)
     //a new game will start when the new round is pressed
       startNewRound()

    
    }
    
}

