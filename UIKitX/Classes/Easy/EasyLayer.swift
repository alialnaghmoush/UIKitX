//
//  EasyLayer.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 27/05/2019.
//

extension CALayer {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Border Layer
    @discardableResult
    public func border(width: CGFloat, color: UIColor) -> CALayer {
        borderWidth = width
        borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ set: CGFloat) -> CALayer {
        borderWidth = set
        return self
    }
    
    @discardableResult
    public func borderColor(_ set: UIColor) -> CALayer {
        borderColor = set.cgColor
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Corners Layer
    @discardableResult
    public func cornerRadius(_ set: CGFloat) -> CALayer {
        cornerRadius = set
        return self
    }
    
    @discardableResult
    public func roundEdges(_ active: Bool = true) -> CALayer {
        if active { cornerRadius = frame.height / 2.0 }
        return self
    }
    
    @discardableResult
    public func maskedCorners(_ set: CACornerMask) -> CALayer {
        maskedCorners = [set]
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Besic Layer
    @discardableResult
    public func backColor(_ set: CGColor) -> CALayer {
        backgroundColor = set
        return self
    }
}
