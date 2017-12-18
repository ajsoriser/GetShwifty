//
//  ViewController.swift
//  Playing with Arrays
//
//  Created by Aaron James on 12/13/17.
//  Copyright © 2017 Aaron James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        //Arrays
        var odds = [Int]()
        odds.append(1)
        odds.append(3)
        odds.append(5)
        odds.append(7)
        
        let Evens: [Int] = [2,4,6,8]
    
        var both = [Int]()
        both.append(odds)
        both = both + Evens
        
    }
    

}

