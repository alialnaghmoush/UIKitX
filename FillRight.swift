//
//  FillRight.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func fillRight(_ to:       UIView,
                    spacUp:     CGFloat,
                    spacRight:  CGFloat,
                    spacBottom: CGFloat,
                    safeArea:   Bool = false,
                    relation:   ConstraintRelation = .equal,
                    priority:   UILayoutPriority = .required,
                    active:     Bool = true) -> UIView {
        
        top(to, spacing: spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillRight(_ to:     UIView,
                    spaces:   CGFloat = 0,
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active:   Bool = true) -> UIView {
        
        fillRight(to, spacUp: spaces, spacRight: spaces, spacBottom: spaces,
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillRight(_ to:     UIView,
                    spaces:   [CGFloat],
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active:   Bool = true) -> UIView {
        
        fillRight(to, spacUp: spaces[0], spacRight: spaces[1], spacBottom: spaces[2],
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With SafeArea
    
    @discardableResult
    func fillRight(spacUp:     CGFloat,
                    spacRight:  CGFloat ,
                    spacBottom: CGFloat,
                    safeArea:   Bool,
                    relation:   ConstraintRelation = .equal,
                    priority:   UILayoutPriority = .required,
                    active:     Bool = true) -> UIView {
        
        top(spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillRight(_ spaces:  CGFloat = 0,
                    safeArea:  Bool = false,
                    relation:  ConstraintRelation = .equal,
                    priority:  UILayoutPriority = .required,
                    active:    Bool = true) -> UIView {
        
        fillRight(spacUp: spaces, spacRight: spaces, spacBottom: spaces,
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillRight(_ spaces: [CGFloat],
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active:   Bool = true) -> UIView {
        
        fillRight(spacUp: spaces[0], spacRight: spaces[1], spacBottom: spaces[2],
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}

