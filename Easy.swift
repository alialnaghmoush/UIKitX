//
//  Easy.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Border Layer
    @discardableResult
    func border(width: CGFloat, color: UIColor) -> UIView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    func borderWidth(_ set: CGFloat) -> UIView {
        layer.borderWidth = set
        return self
    }
    
    @discardableResult
    func borderColor(_ set: UIColor) -> UIView {
        layer.borderColor = set.cgColor
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Corners Layer
    @discardableResult
    func cornerRadius(_ set: CGFloat) -> UIView {
        layer.cornerRadius = set
        return self
    }
    
    @discardableResult
    func roundEdges(_ active: Bool = true) -> UIView {
        if active { layer.cornerRadius = frame.height / 2.0 }
        return self
    }
    
    @discardableResult
    func maskedCorners(_ set: CACornerMask) -> UIView{
        layer.maskedCorners = [set]
        return self
    }
}
