//
//  Fill.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func fill(_ to:       UIView,
              spacUp:     CGFloat,
              spacLeft:   CGFloat,
              spacRight:  CGFloat,
              spacBottom: CGFloat,
              safeArea:   Bool = false,
              relation:   ConstraintRelation = .equal,
              priority:   UILayoutPriority = .required,
              active:     Bool = true) -> UIView {
        
        top(to, spacing: spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fill(_ to:     UIView,
              spaces:   CGFloat = 0,
              safeArea: Bool = false,
              relation: ConstraintRelation = .equal,
              priority: UILayoutPriority = .required,
              active:   Bool = true) -> UIView {
        
        fill(to, spacUp: spaces, spacLeft: spaces, spacRight: spaces, spacBottom: spaces,
             safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fill(_ to:     UIView,
              spaces:   [CGFloat],
              safeArea: Bool = false,
              relation: ConstraintRelation = .equal,
              priority: UILayoutPriority = .required,
              active:   Bool = true) -> UIView {
        
        fill(to, spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], spacBottom: spaces[3],
             safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With Superview
    
    @discardableResult
    public func fill(spacUp:     CGFloat,
              spacLeft:   CGFloat,
              spacRight:  CGFloat ,
              spacBottom: CGFloat,
              safeArea:   Bool,
              relation:   ConstraintRelation = .equal,
              priority:   UILayoutPriority = .required,
              active:     Bool = true) -> UIView {
        
        top(spacUp, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fill(_ spaces:  CGFloat = 0,
              safeArea:  Bool = false,
              relation:  ConstraintRelation = .equal,
              priority:  UILayoutPriority = .required,
              active:    Bool = true) -> UIView {
        
        fill(spacUp: spaces, spacLeft: spaces, spacRight: spaces, spacBottom: spaces,
             safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fill(_ spaces: [CGFloat],
              safeArea: Bool = false,
              relation: ConstraintRelation = .equal,
              priority: UILayoutPriority = .required,
              active:   Bool = true) -> UIView {
        
        fill(spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], spacBottom: spaces[3],
             safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}

