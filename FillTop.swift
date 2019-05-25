//
//  FillTop.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func fillTop(_ to:   UIView,
                  spacUp:    CGFloat,
                  spacLeft:  CGFloat,
                  spacRight: CGFloat,
                  safeArea:  Bool = false,
                  relation:  ConstraintRelation = .equal,
                  priority:  UILayoutPriority = .required,
                  active:    Bool = true) -> UIView {
        
        top(to, spacing: spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillTop(_ to:     UIView,
                  spaces:   CGFloat = 0,
                  safeArea: Bool = false,
                  relation: ConstraintRelation = .equal,
                  priority: UILayoutPriority = .required,
                  active:   Bool = true) -> UIView {
        
        fillTop(to, spacUp: spaces, spacLeft: spaces, spacRight: spaces,
                 safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillTop(_ to:  UIView,
                  spaces:   [CGFloat],
                  safeArea: Bool = false,
                  relation: ConstraintRelation = .equal,
                  priority: UILayoutPriority = .required,
                  active:   Bool = true) -> UIView {
        
        fillTop(to, spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2],
                 safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With Superview
    
    @discardableResult
    func fillTop(spacUp:     CGFloat,
                  spacLeft:   CGFloat,
                  spacRight:  CGFloat ,
                  safeArea:   Bool,
                  relation:   ConstraintRelation = .equal,
                  priority:   UILayoutPriority = .required,
                  active:     Bool = true) -> UIView {
        
        top(spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillTop(_ spaces:  CGFloat = 0,
                  safeArea:  Bool = false,
                  relation:  ConstraintRelation = .equal,
                  priority:  UILayoutPriority = .required,
                  active:    Bool = true) -> UIView {
        
        fillTop(spacUp: spaces, spacLeft: spaces, spacRight: spaces,
                 safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillTop(_ spaces: [CGFloat],
                  safeArea: Bool = false,
                  relation: ConstraintRelation = .equal,
                  priority: UILayoutPriority = .required,
                  active:   Bool = true) -> UIView {
        
        fillTop(spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2],
                 safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}

