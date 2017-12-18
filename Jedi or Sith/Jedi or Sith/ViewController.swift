//
//  ViewController.swift
//  Jedi or Sith
//
//  Created by Aaron James on 12/12/17.
//  Copyright © 2017 Aaron James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Img Outlets
    @IBOutlet var OutImgKilo: UIImageView!
    @IBOutlet var OutImgRae: UIImageView!
    
    //Button Outlets
    //rea
    @IBOutlet var OutJediRea: UIButton!
    @IBOutlet var OutSithRea: UIButton!
    //Kilo
    @IBOutlet var OutJediKilo: UIButton!
    @IBOutlet var OutSithKilo: UIButton!
    
    //Load Action Buttons
    //Rea
    @IBAction func cmdJediRea(_ sender: Any) {
    }
    @IBAction func cmdSithRea(_ sender: Any) {
    }
    //Kilo
    @IBAction func cmdJediKilo(_ sender: Any) {
    }
    @IBAction func cmdSithKilo(_ sender: Any) {
    }
    
    
    
}

