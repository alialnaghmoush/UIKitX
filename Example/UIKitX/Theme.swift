//
//  Theme.swift
//  UIKitX_Example
//
//  Created by Ali AlNaghmoush on 22/06/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import UIKitX




public protocol ThemeProtocol {
    
    var baseColor: UIColor { get }
    var secondColor: UIColor { get }
    var thirdColor: UIColor { get }
    
    var textColor: UIColor { get }
    var secondTextColor: UIColor { get }
    var thirdTextColor: UIColor { get }
    
    var borderColor: UIColor { get }
    var switcher: UIImage { get }
    
}

public class Theme {
    
    static var isDarkMode: Bool = false
    static var current: ThemeProtocol = LightTheme()
    
}




// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
class Style: NSObject {
    
    public var isDarkMode: Bool = false
    
    init(darkMode: Bool = false) {
        isDarkMode = darkMode
    }
    
    public func isDarkMode(_ set: Bool) {
        isDarkMode = set
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Color Name
    
    var baseColor: UIColor {
        return !isDarkMode ? UIColor("EFF3F6") : UIColor("242B38") }
    
    var secondColor: UIColor {
        return !isDarkMode ? UIColor(white: 0, alpha: 0.10) : UIColor(white: 0, alpha: 0.20) }
    
    var thirdColor: UIColor {
        return !isDarkMode ? UIColor(white: 0, alpha: 0.05) : UIColor(white: 1, alpha: 0.05) }
    
    var fieldColor: UIColor {
        return !isDarkMode ? UIColor(white: 1, alpha: 1) : UIColor(white: 1, alpha: 0.05) }
    
    var textColor: UIColor {
        return !isDarkMode ? UIColor("354052") : UIColor(white: 1, alpha: 0.80) }
    
    var secondTextColor: UIColor {
        return !isDarkMode ? UIColor(white: 0, alpha: 0.55) : UIColor(white: 1, alpha: 0.55) }
    
    var thirdTextColor: UIColor {
        return !isDarkMode ? UIColor(white: 0, alpha: 0.34) : UIColor(white: 1, alpha: 0.34) }
    
    var borderColor: UIColor {
        return !isDarkMode ? UIColor("007FFE") : UIColor("007FFE") }
    
    var switcher: UIImage {
        return !isDarkMode ? UIImage(named: "sun")! : UIImage(named: "moon")! }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Font Name
    var extraLightFont = "Changa-ExtraLight"
    var lightFont      = "Changa-Light"
    var regularFont    = "Changa-Regular"
    var mediumFont     = "Changa-Medium"
    var semiBoldFont   = "Changa-SemiBold"
    var boldFont       = "Changa-Bold"
    var extraBoldFont  = "Changa-ExtraBold"
    
}



