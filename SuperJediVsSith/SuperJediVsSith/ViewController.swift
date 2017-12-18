//
//  ViewController.swift
//  SuperJediVsSith
//
//  Created by Aaron James on 12/16/17.
//  Copyright © 2017 Aaron James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Load Outlets
    @IBOutlet var ReaJediOut: UIButton!
    @IBOutlet var ReaSithOut: UIButton!
    @IBOutlet var KiloJediOut: UIButton!
    @IBOutlet var KiloSithOut: UIButton!
    @IBOutlet var RedSaberOut: UIImageView!
    @IBOutlet var BlueSaberOut: UIImageView!
    @IBOutlet var lblOutputOut: UILabel!
    
    //Load Action Buttons
    @IBAction func cmdReaJedi(_ sender: Any) {
        BlueType()
        lblOutputOut.text = "Rea Has Chosen the Jedi"
        lblOutputOut.textColor = UIColor.blue
    }
    @IBAction func cmdReaSith(_ sender: Any) {
        RedType()
        lblOutputOut.text = "Rea Has Chosen the Sith"
        lblOutputOut.textColor = UIColor.red
    }
    @IBAction func cmdKiloJedi(_ sender: Any) {
        BlueType()
        lblOutputOut.text = "Kilo Has Chosen the Jedi"
        lblOutputOut.textColor = UIColor.blue
    }
    @IBAction func cmdKiloSith(_ sender: Any) {
        RedType()
        lblOutputOut.text = "Kilo Has Chosen the Sith"
        lblOutputOut.textColor = UIColor.red
    }
    
    //Make Red
    func RedType() {
        RedSaberOut.isHidden = false
        BlueSaberOut.isHidden = true
    }
    //Make Blue
    func BlueType(){
        RedSaberOut.isHidden = true
        BlueSaberOut.isHidden = false
    }
    
    

}

