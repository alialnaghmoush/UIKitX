//
//  Color.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat,_ opacity: CGFloat = 1.0) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: opacity)
    }
    
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat,_ opacity: CGFloat = 1.0) {
        self.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: opacity)
    }
    
    static func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
}
