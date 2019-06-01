//
//  FillRight.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xFillRight(to:        Anchorable,
                   anchor:     NSLayoutXAxisAnchor? = nil,
                   spacRight:   CGFloat = 0,
                   spacUp:     CGFloat = 0,
                   spacBottom: CGFloat = 0,
                   relation:   ConstraintRelation = .equal,
                   priority:   UILayoutPriority = .required,
                   isActive:   Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xRight(to: to, anchor, spacing: spacRight, relation: relation, priority: priority, isActive: isActive),
            xTop(to: to, spacing: spacUp, relation: relation, priority: priority, isActive: isActive),
            xBottom(to: to, spacing: spacBottom, relation: relation, priority: priority, isActive: isActive),
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Right
    
    @discardableResult
    public func fillRight(_ to:      Anchorable,
                         anchorTo:  NSLayoutXAxisAnchor? = nil,
                         spacRight:  CGFloat = 0,
                         spacUp:    CGFloat = 0,
                         spacBottom: CGFloat = 0,
                         safeArea:  Bool = false,
                         relation:  ConstraintRelation = .equal,
                         priority:  UILayoutPriority = .required,
                         active:    Bool = true) -> UIView {
        
        xFillRight(to: to, anchor: anchorTo, spacRight: spacRight, spacUp: spacUp, spacBottom: spacBottom, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillRight(to: Anchorable,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        xFillRight(to: to, spacRight: spaces, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillRight(to: Anchorable,
                         spaces:   [CGFloat] = [0,0,0],
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        xFillRight(to: to, spacRight: spaces[0], spacUp: spaces[1], spacBottom: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Right To Left
    
    @discardableResult
    public func fillRight(toLeft: Anchorable,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        xFillRight(to: toLeft, anchor: toLeft.leadingAnchor, spacRight: spaces, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillRight(toLeft: Anchorable,
                         spaces:   [CGFloat] = [0,0,0],
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        xFillRight(to: toLeft, anchor: toLeft.leadingAnchor, spacRight: spaces[0], spacUp: spaces[1], spacBottom: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillRight(_ spaces:  CGFloat = 0,
                         safeArea:  Bool = false,
                         relation:  ConstraintRelation = .equal,
                         priority:  UILayoutPriority = .required,
                         active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillRight(to: anchorable, spacRight: spaces, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillRight(_ spaces: [CGFloat],
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillRight(to: anchorable, spacRight: spaces[0], spacUp: spaces[1], spacBottom: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
