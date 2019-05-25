//
//  FillLeft.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func fillLeft(_ to:       UIView,
                   spacUp:     CGFloat,
                   spacLeft:   CGFloat,
                   spacBottom: CGFloat,
                   safeArea:   Bool = false,
                   relation:   ConstraintRelation = .equal,
                   priority:   UILayoutPriority = .required,
                   active:     Bool = true) -> UIView {
        
        top(to, spacing: spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillLeft(_ to:     UIView,
                   spaces:   CGFloat = 0,
                   safeArea: Bool = false,
                   relation: ConstraintRelation = .equal,
                   priority: UILayoutPriority = .required,
                   active:   Bool = true) -> UIView {
        
        fillLeft(to, spacUp: spaces, spacLeft: spaces, spacBottom: spaces,
                  safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillLeft(_ to:     UIView,
                   spaces:   [CGFloat],
                   safeArea: Bool = false,
                   relation: ConstraintRelation = .equal,
                   priority: UILayoutPriority = .required,
                   active:   Bool = true) -> UIView {
        
        fillLeft(to, spacUp: spaces[0], spacLeft: spaces[1], spacBottom: spaces[2],
                  safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With SafeArea
    
    @discardableResult
    func fillLeft(spacUp:     CGFloat,
                   spacLeft:   CGFloat,
                   spacBottom: CGFloat,
                   safeArea:   Bool,
                   relation:   ConstraintRelation = .equal,
                   priority:   UILayoutPriority = .required,
                   active:     Bool = true) -> UIView {
        
        top(spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillLeft(_ spaces:  CGFloat = 0,
                   safeArea:  Bool = false,
                   relation:  ConstraintRelation = .equal,
                   priority:  UILayoutPriority = .required,
                   active:    Bool = true) -> UIView {
        
        fillLeft(spacUp: spaces, spacLeft: spaces, spacBottom: spaces,
                  safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillLeft(_ spaces: [CGFloat],
                   safeArea: Bool = false,
                   relation: ConstraintRelation = .equal,
                   priority: UILayoutPriority = .required,
                   active:   Bool = true) -> UIView {
        
        fillLeft(spacUp: spaces[0], spacLeft: spaces[1], spacBottom: spaces[2],
                  safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
