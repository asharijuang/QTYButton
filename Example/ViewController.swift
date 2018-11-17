//
//  ViewController.swift
//  Example
//
//  Created by Qiscus on 17/11/18.
//  Copyright © 2018 Qiscus. All rights reserved.
//

import UIKit
import QTYButton

class ViewController: UIViewController {

    @IBOutlet weak var buttonQuantity: QTYButton!
    
    @IBOutlet weak var buttonQTY: QTYButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonQuantity.text = 5
        print("default value \(buttonQuantity.text)")
        buttonQuantity.onChange { (value) in
            print("Quantity Change: \(value)")
        }
     
        self.customButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func customButton() {
        // Custom Component
        buttonQuantity.buttonMin.backgroundColor    = UIColor.red
        buttonQuantity.buttonPlus.backgroundColor   = UIColor.green
        buttonQuantity.buttonAdd.backgroundColor    = UIColor.green
        buttonQuantity.label.textColor              = UIColor.green
    }
}

