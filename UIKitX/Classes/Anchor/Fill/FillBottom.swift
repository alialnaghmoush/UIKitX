//
//  FillBottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Top
    
    @discardableResult
    public func fillBottom(_ to:       UIView,
                           spacLeft:   CGFloat = 0,
                           spacRight:  CGFloat = 0,
                           spacBottom: CGFloat = 0,
                           safeBottom:   Bool = false,
                           relation:   AnchorRelation = .equal,
                           priority:   AnchorPriority = .required,
                           active:     Bool = true) -> UIView {
        
        bottom(to, spacing: spacBottom, safeArea: safeBottom, relation: relation, priority: priority, active: active)
        left  (to, spacing: spacLeft, relation: relation, priority: priority, active: active)
        right (to, spacing: spacRight, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(_ to:     UIView,
                           spaces:   CGFloat = 0,
                           safeBottom: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom(to, spacing: spaces, safeArea: safeBottom, relation: relation, priority: priority, active: active)
        left  (to, spacing: spaces, relation: relation, priority: priority, active: active)
        right (to, spacing: spaces, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(_ to:     UIView,
                           spaces:   [CGFloat],
                           safeBottom: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom(to, spacing: spaces[0], safeArea: safeBottom, relation: relation, priority: priority, active: active)
        left  (to, spacing: spaces[1], relation: relation, priority: priority, active: active)
        right (to, spacing: spaces[2], relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the bottom view to top another View
    
    @discardableResult
    public func fillBottom(toTop:   UIView,
                           spacBottom:    CGFloat = 0,
                           spacLeft:   CGFloat = 0,
                           spacRight:  CGFloat = 0,
                           safeTop:   Bool = false,
                           relation:   AnchorRelation = .equal,
                           priority:   AnchorPriority = .required,
                           active:     Bool = true) -> UIView {
        
        bottom(toTop: toTop, spacing: spacBottom, safeArea: safeTop, relation: relation, priority: priority, active: active)
        left  (spacLeft, relation: relation, priority: priority, active: active)
        right (spacRight, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toTop:     UIView,
                           spaces:   CGFloat = 0,
                           safeTop: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom(toTop: toTop, spacing: spaces, safeArea: safeTop, relation: relation, priority: priority, active: active)
        left  (spaces, relation: relation, priority: priority, active: active)
        right (spaces, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toTop:    UIView,
                           spaces:   [CGFloat],
                           safeTop: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom(toTop: toTop, spacing: spaces[0], safeArea: safeTop, relation: relation, priority: priority, active: active)
        left  (spaces[1], relation: relation, priority: priority, active: active)
        right (spaces[2], relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the bottom view to top another View with align
    
    @discardableResult
    public func fillBottom(toAlignTop:   UIView,
                        spacBottom:    CGFloat = 0,
                        spacLeft:   CGFloat = 0,
                        spacRight:  CGFloat = 0,
                        safeTop:   Bool = false,
                        relation:   AnchorRelation = .equal,
                        priority:   AnchorPriority = .required,
                        active:     Bool = true) -> UIView {
        
        bottom(toTop: toAlignTop, spacing: spacBottom, safeArea: safeTop, relation: relation, priority: priority, active: active)
        left  (toAlignTop, spacing: spacLeft, relation: relation, priority: priority, active: active)
        right (toAlignTop, spacing: spacRight, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toAlignTop:     UIView,
                        spaces:   CGFloat = 0,
                        safeTop: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        bottom(toTop: toAlignTop, spacing: spaces, safeArea: safeTop, relation: relation, priority: priority, active: active)
        left(toAlignTop, spacing: spaces, relation: relation, priority: priority, active: active)
        right(toAlignTop, spacing: spaces, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillBottom(toAlignTop:    UIView,
                        spaces:   [CGFloat],
                        safeTop: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        bottom(toTop: toAlignTop, spacing: spaces[0], safeArea: safeTop, relation: relation, priority: priority, active: active)
        left(toAlignTop, spacing: spaces[1], relation: relation, priority: priority, active: active)
        right(toAlignTop, spacing: spaces[2], relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillBottom(_ spaces: CGFloat = 0,
                           safeBottom: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom(spaces, safeArea: safeBottom, relation: relation, priority: priority, active: active)
        left  (spaces, relation: relation, priority: priority, active: active)
        right (spaces, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillBottom(_ spaces: [CGFloat],
                           safeBottom: Bool = false,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           active:   Bool = true) -> UIView {
        
        bottom(spaces[0], safeArea: safeBottom, relation: relation, priority: priority, active: active)
        left  (spaces[1], relation: relation, priority: priority, active: active)
        right (spaces[2], relation: relation, priority: priority, active: active)
        
        return self
    }
}
