//
//  FillRight.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillRight(_ to:     UIView,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top   (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillRight(_ to:    UIView,
                         spaces:   [CGFloat],
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to Left another View
    
    @discardableResult
    public func fillRight(toLeft:     UIView,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (toLeft: toLeft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillRight(toLeft:    UIView,
                         spaces:   [CGFloat],
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (toLeft: toLeft, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to Left another View with align
    
    @discardableResult
    public func fillRight(toAlignLeft:     UIView,
                         spaces:   CGFloat = 0,
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (toLeft: toAlignLeft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (toAlignLeft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toAlignLeft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillRight(toAlignLeft:    UIView,
                         spaces:   [CGFloat],
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (toLeft: toAlignLeft, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (toAlignLeft, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toAlignLeft, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillRight(_ spaces: CGFloat = 0,
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillRight(_ spaces: [CGFloat],
                         safeArea: Bool = false,
                         relation: AnchorRelation = .equal,
                         priority: AnchorPriority = .required,
                         active:   Bool = true) -> UIView {
        
        right (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        top  (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
