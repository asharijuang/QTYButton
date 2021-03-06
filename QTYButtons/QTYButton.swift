//
//  QTYButtonView.swift
//  QTYButtons
//
//  Created by Qiscus on 17/11/18.
//  Copyright © 2018 Qiscus. All rights reserved.
//

import UIKit

public class QTYButton: UIView {
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
    
    @IBOutlet weak var contentView : UIView!
    @IBOutlet weak public var buttonAdd: UIButton!
    @IBOutlet weak public var buttonPlus: UIButton!
    @IBOutlet weak public var label: UILabel!
    @IBOutlet weak public var buttonMin: UIButton!
    
    private var onChange : (Int) -> Void = { _ in }
    
    public var text: Int = 0 {
        didSet {
            if label != nil {
                self.setupUI()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        QTYButton.bundle.loadNibNamed("QTYButton", owner: self, options: [:])
        addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    func setupUI() {
        if text == 0 {
            self.editable(value: false)
        }else {
            self.editable(value: true)
        }
        self.label.text = String(describing: text)
        self.onChange(Int(text))
    }
    
    func editable(value: Bool) {
        if value == true {
            self.buttonAdd.isHidden = true
            self.buttonMin.isHidden = false
        }else {
            self.buttonAdd.isHidden = false
            self.buttonMin.isHidden = true
        }
    }
    
    @IBAction func clickBuy(_ sender: Any) {
        self.text = self.text + 1
    }
    
    @IBAction func clickAdd(_ sender: Any) {
        self.text = self.text + 1
    }
    
    @IBAction func clickMin(_ sender: Any) {
        self.text = self.text - 1
    }
}

extension QTYButton {
    public func onChange(value: @escaping (Int) -> Void) {
        self.onChange = { qty in
            value(qty)
        }
    }
}
