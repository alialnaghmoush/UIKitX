//
//  FillBottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xFillBottom(to:         Anchorable,
                     anchor:     NSLayoutYAxisAnchor? = nil,
                     spacBottom: CGFloat = 0,
                     spacLeft:   CGFloat = 0,
                     spacRight:  CGFloat = 0,
                     relation:   ConstraintRelation = .equal,
                     priority:   UILayoutPriority = .required,
                     isActive:   Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xBottom(to: to, anchor, spacing: spacBottom, relation: relation, priority: priority, isActive: isActive),
            xLeft(to: to, spacing: spacLeft, relation: relation, priority: priority, isActive: isActive),
            xRight(to: to, spacing: spacRight, relation: relation, priority: priority, isActive: isActive)
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Bottom
    
    @discardableResult
    public func fillBottom(_ to:      Anchorable,
                           anchorTo:  NSLayoutYAxisAnchor? = nil,
                           spacBottom:    CGFloat = 0,
                           spacLeft:  CGFloat = 0,
                           spacRight: CGFloat = 0,
                           safeArea:  Bool = false,
                           relation:  ConstraintRelation = .equal,
                           priority:  UILayoutPriority = .required,
                           active:    Bool = true) -> UIView {
        
        xFillBottom(to: to, anchor: anchorTo, spacBottom: spacBottom, spacLeft: spacLeft, spacRight: spacRight, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillBottom(to: Anchorable,
                           spaces:   CGFloat = 0,
                           safeArea: Bool = false,
                           relation: ConstraintRelation = .equal,
                           priority: UILayoutPriority = .required,
                           active:   Bool = true) -> UIView {
        
        xFillBottom(to: to, spacBottom: spaces, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(to: Anchorable,
                           spaces:   [CGFloat] = [0,0,0],
                           safeArea: Bool = false,
                           relation: ConstraintRelation = .equal,
                           priority: UILayoutPriority = .required,
                           active:   Bool = true) -> UIView {
        
        xFillBottom(to: to, spacBottom: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Bottom To Top
    
    @discardableResult
    public func fillBottom(toTop: Anchorable,
                           spaces:   CGFloat = 0,
                           safeArea: Bool = false,
                           relation: ConstraintRelation = .equal,
                           priority: UILayoutPriority = .required,
                           active:   Bool = true) -> UIView {
        
        xFillBottom(to: toTop, anchor: toTop.bottomAnchor, spacBottom: spaces, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toTop: Anchorable,
                           spaces:   [CGFloat] = [0,0,0],
                           safeArea: Bool = false,
                           relation: ConstraintRelation = .equal,
                           priority: UILayoutPriority = .required,
                           active:   Bool = true) -> UIView {
        
        xFillBottom(to: toTop, anchor: toTop.bottomAnchor, spacBottom: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: -  To superview
    
    @discardableResult
    public func fillBottom(_ spaces:  CGFloat = 0,
                           safeArea:  Bool = false,
                           relation:  ConstraintRelation = .equal,
                           priority:  UILayoutPriority = .required,
                           active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillBottom(to: anchorable, spacBottom: spaces, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(_ spaces: [CGFloat],
                           safeArea: Bool = false,
                           relation: ConstraintRelation = .equal,
                           priority: UILayoutPriority = .required,
                           active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillBottom(to: anchorable, spacBottom: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
