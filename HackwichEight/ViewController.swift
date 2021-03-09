//
//  ViewController.swift
//  HackwichEight
//
//  Created by Erin Samson on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        //let's print the value of the slider
        print("The value of the slider is:\(slider.value)")
        currentValue = Int(slider.value)
        
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is \(currentValue)"
    //1. create alert view
        let alert = UIAlertController(title:"Hello World", message: message, preferredStyle: .alert)
    //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style:.default, handler: nil)
     //3. add the button to the alertview
        alert.addAction(action)
      //4. present alertview on the screen
        present(alert,animated: true, completion: nil)
    
    
    
    
    }
    
}

