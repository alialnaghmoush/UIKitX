//
//  FillTop.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xFillTop(to: Anchorable,
                  anchor: NSLayoutYAxisAnchor? = nil,
                  spacUp:    CGFloat = 0,
                  spacLeft:  CGFloat = 0,
                  spacRight: CGFloat = 0,
                  relation: ConstraintRelation = .equal,
                  priority: UILayoutPriority = .required,
                  isActive: Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xTop(to: to, anchor, spacing: spacUp, relation: relation, priority: priority, isActive: isActive),
            xLeft(to: to, spacing: spacLeft, relation: relation, priority: priority, isActive: isActive),
            xRight(to: to, spacing: spacRight, relation: relation, priority: priority, isActive: isActive)
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Top
    
    @discardableResult
    public func fillTop(_ to:      Anchorable,
                        anchorTo:  NSLayoutYAxisAnchor? = nil,
                        spacUp:    CGFloat = 0,
                        spacLeft:  CGFloat = 0,
                        spacRight: CGFloat = 0,
                        safeArea:  Bool = false,
                        relation:  ConstraintRelation = .equal,
                        priority:  UILayoutPriority = .required,
                        active:    Bool = true) -> UIView {
        
        xFillTop(to: to, anchor: anchorTo, spacUp: spacUp, spacLeft: spacLeft, spacRight: spacRight, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillTop(to: Anchorable,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillTop(to: to, spacUp: spaces, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(to: Anchorable,
                        spaces:   [CGFloat] = [0,0,0],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillTop(to: to, spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)

        return self
    }
    
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Top To Bottom
    
    @discardableResult
    public func fillTop(toBottom: Anchorable,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillTop(to: toBottom, anchor: toBottom.bottomAnchor, spacUp: spaces, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(toBottom: Anchorable,
                        spaces:   [CGFloat] = [0,0,0],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFillTop(to: toBottom, anchor: toBottom.bottomAnchor, spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillTop(_ spaces:  CGFloat = 0,
                        safeArea:  Bool = false,
                        relation:  ConstraintRelation = .equal,
                        priority:  UILayoutPriority = .required,
                        active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillTop(to: anchorable, spacUp: spaces, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(_ spaces: [CGFloat],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillTop(to: anchorable, spacUp: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
