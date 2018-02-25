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
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // only executed when action is happening
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // pick random number and display it to main UI
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print("first dice result is: ", randomDiceIndex1)
        print("second dice result is: ", randomDiceIndex2)
        
        // replace dice image view with an image of randomize number
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

