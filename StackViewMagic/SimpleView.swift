//
//  SimpleView.swift
//  StackViewMagic
//
//  Created by Renan Benatti Dias on 24/04/18.
//  Copyright © 2018 Blue Origami. All rights reserved.
//

import UIKit

class SimpleView: UIView {

    @IBOutlet weak var centerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        centerLabel.textAlignment = .center
    }

}
