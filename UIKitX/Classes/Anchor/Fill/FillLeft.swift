//
//  FillLeft.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillLeft(_ to:     UIView,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        left  (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top   (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillLeft(_ to:    UIView,
                        spaces:   [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        left (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to Right another View
    
    @discardableResult
    public func fillLeft(toRight:     UIView,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        left (toRight: toRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillLeft(toRight:    UIView,
                        spaces:   [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        left (toRight: toRight, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to Right another View with align
    
    @discardableResult
    public func fillLeft(toAlignRight:     UIView,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        left (toRight: toAlignRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (toAlignRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toAlignRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillLeft(toAlignRight:    UIView,
                        spaces:   [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {

        left (toRight: toAlignRight, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (toAlignRight, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toAlignRight, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillLeft(_ spaces: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {

        left (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillLeft(_ spaces: [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {

        left (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
