//
//  ViewController.swift
//  Dicee
//
//  Created by Firnaz Luztian Adiansyah on 24/02/18.
//  Copyright © 2018 Firnaz Luztian Adiansyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // initialize dice in an array
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // initialize imageview
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // only executed when action is happening
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // call update dice image to randomize image when button is clicked
        updateDiceImage()
    }
    
    func updateDiceImage() {
        
        // pick random number and display it to main UI
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // replace dice image view with an image of randomize number
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImage()
    }
}

