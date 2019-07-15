//
//  LightTheme.swift
//  UIKitX_Example
//
//  Created by Ali AlNaghmoush on 25/06/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import UIKitX

class LightTheme: ThemeProtocol {
    
    var baseColor: UIColor = UIColor("DDE1E9")
    var secondColor: UIColor = UIColor(white: 0, alpha: 0.10)
    var thirdColor: UIColor = UIColor(white: 0, alpha: 0.05)
    
    var textColor: UIColor = UIColor(white: 0, alpha: 0.80)
    var secondTextColor: UIColor = UIColor(white: 0, alpha: 0.55)
    var thirdTextColor: UIColor = UIColor(white: 0, alpha: 0.34)
    
    var borderColor: UIColor = UIColor("007FFE")
    var switcher: UIImage = UIImage(named: "sun")!
    
}
