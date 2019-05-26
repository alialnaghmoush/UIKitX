//
//  FillHorizontally.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func fillHorizontally(_ to:      UIView,
                          spacLeft:  CGFloat,
                          spacRight: CGFloat,
                          safeArea:  Bool = false,
                          relation:  ConstraintRelation = .equal,
                          priority:  UILayoutPriority = .required,
                          active:    Bool = true) -> UIView {
        
        left(to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ to:     UIView,
                          spaces:   CGFloat = 0,
                          safeArea: Bool = false,
                          relation: ConstraintRelation = .equal,
                          priority: UILayoutPriority = .required,
                          active:   Bool = true) -> UIView {
        
        fillHorizontally(to, spacLeft: spaces, spacRight: spaces,
                         safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ to:     UIView,
                          spaces:   [CGFloat],
                          safeArea: Bool = false,
                          relation: ConstraintRelation = .equal,
                          priority: UILayoutPriority = .required,
                          active:   Bool = true) -> UIView {
        
        fillHorizontally(to, spacLeft: spaces[0], spacRight: spaces[1],
                         safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With SafeArea
    
    @discardableResult
    public func fillHorizontally(spacLeft:  CGFloat,
                          spacRight: CGFloat ,
                          safeArea:  Bool,
                          relation:  ConstraintRelation = .equal,
                          priority:  UILayoutPriority = .required,
                          active:    Bool = true) -> UIView {
        
        left(spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ spaces: [CGFloat],
                          safeArea: Bool = false,
                          relation: ConstraintRelation = .equal,
                          priority: UILayoutPriority = .required,
                          active:   Bool = true) -> UIView {
        
        fillHorizontally(spacLeft: spaces[0], spacRight: spaces[1],
                         safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ spaces:  CGFloat = 0,
                          safeArea:  Bool = false,
                          relation:  ConstraintRelation = .equal,
                          priority:  UILayoutPriority = .required,
                          active:    Bool = true) -> UIView {
        
        fillHorizontally(spacLeft: spaces, spacRight: spaces,
                         safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
