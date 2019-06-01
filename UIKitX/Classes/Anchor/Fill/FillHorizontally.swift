//
//  FillHorizontally.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

//Horizontally

extension Anchorable {
    
    @discardableResult
    func xFillHorizontally(to:       Anchorable,
                           anchor:     NSLayoutXAxisAnchor? = nil,
                           spacLeft:   CGFloat = 0,
                           spacRight:  CGFloat = 0,
                           relation:   ConstraintRelation = .equal,
                           priority:   UILayoutPriority = .required,
                           isActive:   Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xLeft(to: to, spacing: spacLeft, relation: relation, priority: priority, isActive: isActive),
            xRight(to: to, spacing: spacRight, relation: relation, priority: priority, isActive: isActive),
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Vertically
    
    @discardableResult
    public func fillHorizontally(_ to:      Anchorable,
                               anchorTo:  NSLayoutXAxisAnchor? = nil,
                               spacLeft:  CGFloat = 0,
                               spacRight: CGFloat = 0,
                               safeArea:  Bool = false,
                               relation:  ConstraintRelation = .equal,
                               priority:  UILayoutPriority = .required,
                               active:    Bool = true) -> UIView {
        
        xFillHorizontally(to: to, anchor: anchorTo, spacLeft: spacLeft, spacRight: spacRight, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillHorizontally(to: Anchorable,
                               spaces:   CGFloat = 0,
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillHorizontally(to: to, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(to: Anchorable,
                               spaces:   [CGFloat] = [0,0],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillHorizontally(to: to, spacLeft: spaces[0], spacRight: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Horizontally To Left
    
    @discardableResult
    public func fillHorizontally(toLeft: Anchorable,
                               spaces:   CGFloat = 0,
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillHorizontally(to: toLeft, anchor: toLeft.leadingAnchor, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(toLeft: Anchorable,
                               spaces:   [CGFloat] = [0,0],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillHorizontally(to: toLeft, anchor: toLeft.leadingAnchor, spacLeft: spaces[1], spacRight: spaces[2], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Horizontally To Right
    
    @discardableResult
    public func fillHorizontally(toRight: Anchorable,
                               spaces:   CGFloat = 0,
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillHorizontally(to: toRight, anchor: toRight.trailingAnchor, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(toRight: Anchorable,
                               spaces:   [CGFloat] = [0,0],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        xFillHorizontally(to: toRight, anchor: toRight.trailingAnchor, spacLeft: spaces[0], spacRight: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillHorizontally(_ spaces:  CGFloat = 0,
                               safeArea:  Bool = false,
                               relation:  ConstraintRelation = .equal,
                               priority:  UILayoutPriority = .required,
                               active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillHorizontally(to: anchorable, spacLeft: spaces, spacRight: spaces, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ spaces: [CGFloat],
                               safeArea: Bool = false,
                               relation: ConstraintRelation = .equal,
                               priority: UILayoutPriority = .required,
                               active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFillHorizontally(to: anchorable, spacLeft: spaces[0], spacRight: spaces[1], relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
