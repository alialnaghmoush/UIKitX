//
//  Easy.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Border Layer
    @discardableResult
    public func border(width: CGFloat, color: UIColor) -> UIView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ set: CGFloat) -> UIView {
        layer.borderWidth = set
        return self
    }
    
    @discardableResult
    public func borderColor(_ set: UIColor) -> UIView {
        layer.borderColor = set.cgColor
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Corners Layer
    @discardableResult
    public func cornerRadius(_ set: CGFloat) -> UIView {
        layer.cornerRadius = set
        return self
    }
    
    @discardableResult
    public func roundEdges(_ active: Bool = true) -> UIView {
        if active { layer.cornerRadius = frame.height / 2.0 }
        return self
    }
    
    @discardableResult
    public func maskedCorners(_ set: CACornerMask) -> UIView{
        layer.maskedCorners = [set]
        return self
    }
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Besic View
    @discardableResult
    public func backgroundColor(_ set: UIColor) -> UIView {
        backgroundColor = set
        return self
    }
    
    
}
