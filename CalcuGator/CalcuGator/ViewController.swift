//
//  ViewController.swift
//  CalcuGator
//
//  Created by Firnaz Luztian Adiansyah on 10/03/18.
//  Copyright © 2018 Firnaz Luztian Adiansyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var x = 0
    var y = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add() -> Int {
        let answer = x + y
        return answer
    }
    func sub() -> Int {
        let answer = x - y
        return answer
    }
    func divide() -> Int {
        let answer = x / y
        return answer
    }
    func multiply() -> Int {
        let answer = x * y
        return answer
    }
    


}

