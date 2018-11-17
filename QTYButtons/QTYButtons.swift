//
//  QTYButtons.swift
//  QTYButtons
//
//  Created by Qiscus on 17/11/18.
//  Copyright © 2018 Qiscus. All rights reserved.
//

import Foundation

class QTYButtons {
    class var bundle:Bundle{
        get{
            let podBundle = Bundle(for: QTYButtons.self)
            if let bundleURL = podBundle.url(forResource: "QTYButtons", withExtension: "bundle") {
                return Bundle(url: bundleURL)!
            }else{
                return podBundle
            }
        }
    }
    public static let shared : QTYButtons = QTYButtons()
    
    
}
