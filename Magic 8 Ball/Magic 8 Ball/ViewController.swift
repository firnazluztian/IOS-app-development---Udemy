//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Firnaz Luztian Adiansyah on 26/02/18.
//  Copyright © 2018 Firnaz Luztian Adiansyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // initialize image view
    @IBOutlet weak var imageView1: UIImageView!
    
    // array of image view balls
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateImageView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // handle action if ask button is pressed
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateImageView()
    }
    
    func updateImageView() {
        
        // initialize random number from 0-4
        randomBallNumber = Int(arc4random_uniform(5))
        
        // update imageview with a random assigned number
        imageView1.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateImageView()
    }
}

