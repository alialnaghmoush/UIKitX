//
//  Fill.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xFill(to: Anchorable,
               spacTop:    CGFloat = 0,
               spacLeft:  CGFloat = 0,
               spacRight: CGFloat = 0,
               spacBottom: CGFloat = 0,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               isActive: Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xTop(to: to, spacing: spacTop, relation: relation, priority: priority, isActive: isActive),
            xLeft(to: to, spacing: spacLeft, relation: relation, priority: priority, isActive: isActive),
            xRight(to: to, spacing: spacRight, relation: relation, priority: priority, isActive: isActive),
            xBottom(to: to, spacing: spacBottom, relation: relation, priority: priority, isActive: isActive)
            
        ]
        
        return constraints
    }
    
}


extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Top
    
    @discardableResult
    public func fill(_ to:       Anchorable,
                     spacTop:     CGFloat,
                     spacLeft:   CGFloat,
                     spacRight:  CGFloat,
                     spacBottom: CGFloat,
                     relation:   ConstraintRelation = .equal,
                     priority:   UILayoutPriority = .required,
                     active:     Bool = true) -> UIView {
        
        xFill(to: to, spacTop: spacTop, spacLeft: spacLeft, spacRight: spacRight, spacBottom: spacBottom,
              relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fill(to: Anchorable,
                        spaces:   CGFloat = 0,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFill(to: to, spacTop: spaces, spacLeft: spaces, spacRight: spaces, spacBottom: spaces,
              relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fill(to: Anchorable,
                        spaces:   [CGFloat] = [0,0,0],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        xFill(to: to, spacTop: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], spacBottom: spaces[3],
              relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fill(_ spaces:  CGFloat = 0,
                        safeArea:  Bool = false,
                        relation:  ConstraintRelation = .equal,
                        priority:  UILayoutPriority = .required,
                        active:    Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFill(to: anchorable, spacTop: spaces, spacLeft: spaces, spacRight: spaces, spacBottom: spaces,
              relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func fill(_ spaces: [CGFloat],
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active:   Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xFill(to: anchorable, spacTop: spaces[0], spacLeft: spaces[1], spacRight: spaces[2], spacBottom: spaces[3],
              relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
