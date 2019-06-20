//
//  FillBottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillBottom(_ to:     UIView,
                           spaces:   CGFloat = 0,
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(_ to:    UIView,
                           spaces:   [CGFloat],
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (to, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to Top another View
    
    @discardableResult
    public func fillBottom(toTop:     UIView,
                           spaces:   CGFloat = 0,
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (toTop: toTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toTop:    UIView,
                           spaces:   [CGFloat],
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (toTop: toTop, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to Top another View with align
    
    @discardableResult
    public func fillBottom(toAlignTop:     UIView,
                           spaces:   CGFloat = 0,
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (toTop: toAlignTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (toAlignTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (toAlignTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toAlignTop:    UIView,
                           spaces:   [CGFloat],
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (toTop: toAlignTop, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (toAlignTop, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (toAlignTop, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillBottom(_ spaces: CGFloat = 0,
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillBottom(_ spaces: [CGFloat],
                           safeArea: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left   (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
