//
//  FillHorizontally.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Top
    
    @discardableResult
    public func fillHorizontally(_ to:       UIView,
                                 spacLeft:   CGFloat = 0,
                                 spacRight:  CGFloat = 0,
                                 safeArea:   Bool = false,
                                 relation:   AnchorRelation = .equal,
                                 priority:   AnchorPriority = .required,
                                 active:     Bool = true) -> UIView {
        
        left  (to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillHorizontally(_ to:     UIView,
                             spaces:   CGFloat = 0,
                             safeArea: Bool = false,
                             relation: AnchorRelation = .equal,
                             priority: AnchorPriority = .required,
                             active:   Bool = true) -> UIView {
        
        left  (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ to:     UIView,
                             spaces:   [CGFloat],
                             safeArea: Bool = false,
                             relation: AnchorRelation = .equal,
                             priority: AnchorPriority = .required,
                             active:   Bool = true) -> UIView {
        
        left  (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillHorizontally(_ spaces:    CGFloat = 0,
                             safeArea: Bool = false,
                             relation: AnchorRelation = .equal,
                             priority: AnchorPriority = .required,
                             active:   Bool = true) -> UIView {
        
        left  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ spaces: [CGFloat],
                             safeArea: Bool = false,
                             relation: AnchorRelation = .equal,
                             priority: AnchorPriority = .required,
                             active:   Bool = true) -> UIView {
        
        left  (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To FlexibleAnchor Superview
    
    @discardableResult
    public func fillHorizontally(_ spaces: FlexibleAnchor,
                             safeArea: Bool = false,
                             priority: AnchorPriority = .required,
                             active:   Bool = true) -> UIView {
        
        left  (spaces.points, safeArea: safeArea, relation: spaces.relation, priority: priority, active: active)
        right (spaces.points, safeArea: safeArea, relation: spaces.relation, priority: priority, active: active)
        
        return self
    }
    
}
