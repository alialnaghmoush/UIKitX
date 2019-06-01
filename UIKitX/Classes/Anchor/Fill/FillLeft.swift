//
//  FillLeft.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xFillLeft(to:        Anchorable,
                  anchor:     NSLayoutXAxisAnchor? = nil,
                  spacLeft:   CGFloat = 0,
                  spacUp:     CGFloat = 0,
                  spacBottom: CGFloat = 0,
                  relation:   ConstraintRelation = .equal,
                  priority:   UILayoutPriority = .required,
                  isActive:   Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xLeft(to: to, anchor, spacing: spacLeft, relation: relation, priority: priority, isActive: isActive),
            xTop(to: to, spacing: spacUp, relation: relation, priority: priority, isActive: isActive),
            xBottom(to: to, spacing: spacBottom, relation: relation, priority: priority, isActive: isActive),
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Left
    
    @discardableResult
    public func fillLeft(_ to:      Anchorable,
                        anchorTo:  NSLayoutXAxisAnchor? = nil,
                        spacLeft:  CGFloat = 0,
                        spacUp:    CGFloat = 0,
                        spacBottom: CGFloat = 0,
                        safeArea:  Bool = false,
                        relation:  ConstraintRelation = .equal,
                        priority:  UILayoutPriority = .required,
                        active:    Bool = true) -> UIView {
        
        xFillLeft(to: to, anchor: anchorTo, spacLeft: spacLeft, spacUp: spacUp, spacBottom: spacBottom, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillLeft(to: Anchorable,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillLeft(to: to, spacLeft: spaces, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillLeft(to: Anchorable,
                        spaces:   [CGFloat] = [0,0,0],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillLeft(to: to, spacLeft: spaces[0], spacUp: spaces[1], spacBottom: spaces[2], relation: relation, priority: priority, isActive: active)

        return self
    }
    
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Left To Right
    
    @discardableResult
    public func fillLeft(toRight: Anchorable,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillLeft(to: toRight, anchor: toRight.trailingAnchor, spacLeft: spaces, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillLeft(toRight: Anchorable,
                        spaces:   [CGFloat] = [0,0,0],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillLeft(to: toRight, anchor: toRight.trailingAnchor, spacLeft: spaces[0], spacUp: spaces[1], spacBottom: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillLeft(_ spaces:  CGFloat = 0,
                        safeArea:  Bool = false,
                        relation:  ConstraintRelation = .equal,
                        priority:  UILayoutPriority = .required,
                        active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillLeft(to: anchorable, spacLeft: spaces, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillLeft(_ spaces: [CGFloat],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillLeft(to: anchorable, spacLeft: spaces[0], spacUp: spaces[1], spacBottom: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
