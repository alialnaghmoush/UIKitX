//
//  EasyLabel.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 21/06/2019.
//

extension UILabel {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Text
    @discardableResult
    public func text(_ set: String) -> UILabel {
        text = set
        return self
    }
    
    @discardableResult
    public func textColor(_ set: UIColor) -> UILabel {
        textColor = set
        return self
    }
    
    @discardableResult
    public func textColor(_ set: UIColor, with: UILabel...) -> UILabel {
        textColor = set
        with.forEach { (x) in
            x.textColor = set
        }
        return self
    }
    
    @discardableResult
    public func textAlignment(_ set: NSTextAlignment) -> UILabel {
        textAlignment = set
        return self
    }
    
    @discardableResult
    public func textAlignment(_ set: NSTextAlignment, with: UILabel...) -> UILabel {
        textAlignment = set
        with.forEach { (x) in
            x.textAlignment = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Text Highlighted
    @discardableResult
    public func highlightedTextColor(_ set: UIColor) -> UILabel {
        highlightedTextColor = set
        return self
    }
    
    @discardableResult
    public func highlightedTextColor(_ set: UIColor, with: UILabel...) -> UILabel {
        highlightedTextColor = set
        with.forEach { (x) in
            x.highlightedTextColor = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - font
    @discardableResult
    public func font(name: String, size: CGFloat) -> UILabel {
        font = UIFont(name: name, size: size)
        return self
    }
    
    @discardableResult
    public func font(name: String, size: CGFloat, with: UILabel...) -> UILabel {
        font = UIFont(name: name, size: size)
        with.forEach { (x) in
            x.font = UIFont(name: name, size: size)
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Number Of Lines
    @discardableResult
    public func lines(_ set: Int) -> UILabel {
        numberOfLines = set
        return self
    }
    
    @discardableResult
    public func lines(_ set: Int, with: UILabel...) -> UILabel {
        numberOfLines = set
        with.forEach { (x) in
            x.numberOfLines = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Minimum Scale
    @discardableResult
    public func minimumScale(_ set: CGFloat) -> UILabel {
        minimumScaleFactor = set
        return self
    }
    
    @discardableResult
    public func minimumScale(_ set: CGFloat, with: UILabel...) -> UILabel {
        minimumScaleFactor = set
        with.forEach { (x) in
            x.minimumScaleFactor = set
        }
        return self
    }
    
    @discardableResult
    public func fitFontSize(_ set: Bool = true) -> UILabel { // default is YES.
        adjustsFontSizeToFitWidth = set
        return self
    }
    
    @discardableResult
    public func fitFontSize(_ set: Bool = true, with: UILabel...) -> UILabel { // default is YES.
        adjustsFontSizeToFitWidth = set
        with.forEach { (x) in
            x.adjustsFontSizeToFitWidth = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Text Shadow
    
    @discardableResult
    public func textShadow(_ set: UIColor = .black, xAxis: CGFloat = 0, yAxis: CGFloat = -1) -> UILabel {
        shadowColor = set
        shadowOffset = CGSize(width: xAxis, height: yAxis)
        return self
    }
    
    @discardableResult
    public func textShadow(_ set: UIColor = .black, xAxis: CGFloat = 0, yAxis: CGFloat = -1, with: UILabel...) -> UILabel {
        shadowColor = set
        shadowOffset = CGSize(width: xAxis, height: yAxis)
        with.forEach { (x) in
            x.shadowColor = set
            x.shadowOffset = CGSize(width: xAxis, height: yAxis)
        }
        return self
    }
    
    @discardableResult
    public func shadowColor(_ set: UIColor = .black) -> UILabel { // default is Black
        shadowColor = set
        return self
    }
    
    @discardableResult
    public func shadowColor(_ set: UIColor = .black, with: UILabel...) -> UILabel {
        shadowColor = set
        with.forEach { (x) in
            x.shadowColor = set
        }
        return self
    }
    
    @discardableResult
    public func shadowOffset(xAxis: CGFloat = 0, yAxis: CGFloat = -1) -> UILabel { // default is CGSize(0, -1)
        shadowOffset = CGSize(width: xAxis, height: yAxis)
        return self
    }
    
    @discardableResult
    public func shadowOffset(xAxis: CGFloat = 0, yAxis: CGFloat = -1, with: UILabel...) -> UILabel {
        shadowOffset = CGSize(width: xAxis, height: yAxis)
        with.forEach { (x) in
            x.shadowOffset = CGSize(width: xAxis, height: yAxis)
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - User Interaction
    @discardableResult
    public func userInteraction(_ set: Bool = true) -> UILabel { // default is YES.
        isUserInteractionEnabled = set
        
        return self
    }
    
    @discardableResult
    public func userInteraction(_ set: Bool = true, with: UILabel...) -> UILabel { // default is YES.
        isUserInteractionEnabled = set
        with.forEach { (x) in
            x.isUserInteractionEnabled = set
        }
        return self
    }
    
}
