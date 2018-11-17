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

    @IBOutlet weak var ButtonQuantity: QTYButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ButtonQuantity.backgroundColor = UIColor.red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

