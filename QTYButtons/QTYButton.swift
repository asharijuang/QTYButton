//
//  QTYButtonLib.swift
//  QTYButtons
//
//  Created by Qiscus on 17/11/18.
//  Copyright © 2018 Qiscus. All rights reserved.
//

import Foundation

public class QTYButton {
    class var bundle:Bundle{
        get{
            let podBundle = Bundle(for: QTYButton.self)
            if let bundleURL = podBundle.url(forResource: "QTYButtons", withExtension: "bundle") {
                return Bundle(url: bundleURL)!
            }else{
                return podBundle
            }
        }
    }
}
