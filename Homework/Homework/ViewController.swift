//
//  ViewController.swift
//  Homework
//
//  Created by Aaron James on 12/8/17.
//  Copyright © 2017 Aaron James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Load Outlet Manipulation Views
    @IBOutlet var outSegRBG: UISegmentedControl!
    @IBOutlet var outLblOutput: UILabel!
    @IBOutlet var outTxtInput: UITextField!
    @IBOutlet var outCmdEnter: UIButton!
    @IBOutlet var outSwtYell: UISwitch!
    
    
    
    //Load Segmented Controler Button
    @IBAction func segRBG(_ sender: Any) {
        switch outSegRBG.selectedSegmentIndex{
        case 0:
            //Red
            outSegRBG.tintColor = UIColor.red
            outCmdEnter.tintColor = UIColor.red
            outSwtYell.tintColor = UIColor.red
            break
            
        case 2:
            //Green
            outSegRBG.tintColor = UIColor.green
            outCmdEnter.tintColor = UIColor.green
            outSwtYell.tintColor = UIColor.green
            break
            
        default:
            //Blue
            outSegRBG.tintColor = UIColor.blue
            outCmdEnter.tintColor = UIColor.blue
            outSwtYell.tintColor = UIColor.blue
            break
            
        }
    }
    
    
    //Start alternating 
    var Counter: Int = 0
    //Load Username Varible
    var Aaron: String = ""
    //Load Button
    @IBAction func cmdEnter(_ sender: Any) {
        //pull in varible and assign text
        Aaron = "Hello, " + outTxtInput.text!
        
        //Check if Text in box, Respond
        if Counter == 0{
            //Increment Counter
            Counter = Counter + 1
            
            //Check if "Yelling"
            if outSwtYell.isOn{
                outLblOutput.text = Aaron.uppercased()
            }
            else{
                outLblOutput.text = Aaron
            }
        }
        else{
            //Decrament
            Counter = Counter - 1
            outLblOutput.text = ""
            outTxtInput.text = ""
        }
        
    }
    
    

}

