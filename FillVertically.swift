//
//  FillVertically.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func fillVertically(_ to:       UIView,
                         spacUp:     CGFloat,
                         spacBottom: CGFloat,
                         safeArea:   Bool = false,
                         relation:   ConstraintRelation = .equal,
                         priority:   UILayoutPriority = .required,
                         active:     Bool = true) -> UIView {
        
        top(to, spacing: spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillVertically(_ to:     UIView,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        fillVertically(to, spacUp: spaces, spacBottom: spaces,
                        safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillVertically(_ to:     UIView,
                         spaces:   [CGFloat],
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        fillVertically(to, spacUp: spaces[0], spacBottom: spaces[1],
                        safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With SafeArea
    
    @discardableResult
    func fillVertically(spacUp:     CGFloat,
                         spacBottom: CGFloat,
                         safeArea:   Bool,
                         relation:   ConstraintRelation = .equal,
                         priority:   UILayoutPriority = .required,
                         active:     Bool = true) -> UIView {
        
        top(spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillVertically(_ spaces:  CGFloat = 0,
                         safeArea:  Bool = false,
                         relation:  ConstraintRelation = .equal,
                         priority:  UILayoutPriority = .required,
                         active:    Bool = true) -> UIView {
        
        fillVertically(spacUp: spaces, spacBottom: spaces,
                        safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillVertically(_ spaces: [CGFloat],
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        fillVertically(spacUp: spaces[0], spacBottom: spaces[1],
                        safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}

