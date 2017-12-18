//
//  ViewController.swift
//  Hello World 3
//
//  Created by Aaron James on 12/11/17.
//  Copyright © 2017 Aaron James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var outLblOutput: UILabel!
    @IBOutlet var outTxtInput: UITextField!
    @IBOutlet var outCmdEnter: UIButton!
    
    
    //Counter
    var Counter: Int = 0
    //String Builder
    var Aaron: String = ""
    //Make Button Work
    
    @IBAction func cmdEnter(_ sender: Any) {
        if Counter == 0{
            Counter = Counter + 1
            Aaron = "Hello, " + outTxtInput.text!
            outLblOutput.text = Aaron
        }
        else{
            Counter = Counter - 1
            outTxtInput.text = ""
            outLblOutput.text = ""
        }
        
    }
    
}

