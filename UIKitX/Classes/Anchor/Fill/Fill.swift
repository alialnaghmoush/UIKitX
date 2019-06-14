//
//  Fill.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Top
    
    @discardableResult
    public func fill(_ to:       UIView,
                     spacTop:    CGFloat = 0,
                     spacLeft:   CGFloat = 0,
                     spacRight:  CGFloat = 0,
                     spacBottom: CGFloat = 0,
                     safeArea:   Bool = false,
                     relation:   AnchorRelation = .equal,
                     priority:   AnchorPriority = .required,
                     active:     Bool = true) -> UIView {
        
        top   (to, spacing: spacTop, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fill(_ to:     UIView,
                     spaces:   CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active:   Bool = true) -> UIView {
        
        top   (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fill(_ to:     UIView,
                     spaces:   [CGFloat],
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active:   Bool = true) -> UIView {
        
        top   (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces[3], safeArea: safeArea, relation: relation, priority: priority, active: active)
    
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fill(_ spaces:    CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top   (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)

        
        return self
    }
    
    @discardableResult
    public func fill(_ spaces: [CGFloat],
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active:   Bool = true) -> UIView {
        
        top   (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[3], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
