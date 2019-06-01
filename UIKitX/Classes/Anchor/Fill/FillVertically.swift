//
//  FillVertically.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xFillVertically(to:         Anchorable,
                         anchor:     NSLayoutYAxisAnchor? = nil,
                         spacUp:     CGFloat = 0,
                         spacBottom: CGFloat = 0,
                         relation:   ConstraintRelation = .equal,
                         priority:   UILayoutPriority = .required,
                         isActive:   Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xTop(to: to, spacing: spacUp, relation: relation, priority: priority, isActive: isActive),
            xBottom(to: to, spacing: spacBottom, relation: relation, priority: priority, isActive: isActive),
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Vertically
    
    @discardableResult
    public func fillVertically(_ to:      Anchorable,
                         anchorTo:  NSLayoutYAxisAnchor? = nil,
                         spacUp:    CGFloat = 0,
                         spacBottom: CGFloat = 0,
                         safeArea:  Bool = false,
                         relation:  ConstraintRelation = .equal,
                         priority:  UILayoutPriority = .required,
                         active:    Bool = true) -> UIView {
        
        xFillVertically(to: to, anchor: anchorTo, spacUp: spacUp, spacBottom: spacBottom, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillVertically(to: Anchorable,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        xFillVertically(to: to, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillVertically(to: Anchorable,
                         spaces:   [CGFloat] = [0,0],
                         safeArea: Bool = false,
                         relation: ConstraintRelation = .equal,
                         priority: UILayoutPriority = .required,
                         active:   Bool = true) -> UIView {
        
        xFillVertically(to: to, spacUp: spaces[0], spacBottom: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Vertically To Top
    
    @discardableResult
    public func fillVertically(toTop: Anchorable,
                               spaces:   CGFloat = 0,
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillVertically(to: toTop, anchor: toTop.topAnchor, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillVertically(toTop: Anchorable,
                               spaces:   [CGFloat] = [0,0],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillVertically(to: toTop, anchor: toTop.topAnchor, spacUp: spaces[0], spacBottom: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Vertically To Bottom
    
    @discardableResult
    public func fillVertically(toBottom: Anchorable,
                               spaces:   CGFloat = 0,
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillVertically(to: toBottom, anchor: toBottom.bottomAnchor, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillVertically(toBottom: Anchorable,
                               spaces:   [CGFloat] = [0,0],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillVertically(to: toBottom, anchor: toBottom.bottomAnchor, spacUp: spaces[0], spacBottom: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillVertically(_ spaces:  CGFloat = 0,
                               safeArea:  Bool = false,
                               relation:  ConstraintRelation = .equal,
                               priority:  UILayoutPriority = .required,
                               active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillVertically(to: anchorable, spacUp: spaces, spacBottom: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillVertically(_ spaces: [CGFloat],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillVertically(to: anchorable, spacUp: spaces[0], spacBottom: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
