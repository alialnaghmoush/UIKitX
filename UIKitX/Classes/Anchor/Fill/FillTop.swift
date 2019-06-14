//
//  FillTop.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillTop(_ to:       UIView,
                        spacTop:    CGFloat = 0,
                        spacLeft:   CGFloat = 0,
                        spacRight:  CGFloat = 0,
                        safeArea:   Bool = false,
                        relation:   AnchorRelation = .equal,
                        priority:   AnchorPriority = .required,
                        active:     Bool = true) -> UIView {
        
        top   (to, spacing: spacTop, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(_ to:     UIView,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top  (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(_ to:    UIView,
                        spaces:   [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top  (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the top view to bottom another View
    
    @discardableResult
    public func fillTop(toBottom:   UIView,
                        spacTop:    CGFloat = 0,
                        spacLeft:   CGFloat = 0,
                        spacRight:  CGFloat = 0,
                        safeArea:   Bool = false,
                        relation:   AnchorRelation = .equal,
                        priority:   AnchorPriority = .required,
                        active:     Bool = true) -> UIView {
        
        top   (toBottom: toBottom, spacing: spacTop, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(toBottom:     UIView,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top  (toBottom: toBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(toBottom:    UIView,
                        spaces:   [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top(toBottom: toBottom, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the top view to bottom another View with align
    
    @discardableResult
    public func fillTop(toAlignBottom:   UIView,
                        spacTop:    CGFloat = 0,
                        spacLeft:   CGFloat = 0,
                        spacRight:  CGFloat = 0,
                        safeArea:   Bool = false,
                        relation:   AnchorRelation = .equal,
                        priority:   AnchorPriority = .required,
                        active:     Bool = true) -> UIView {
        
        top   (toBottom: toAlignBottom, spacing: spacTop, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left  (toAlignBottom, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right (toAlignBottom, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(toAlignBottom:     UIView,
                        spaces:   CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top  (toBottom: toAlignBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left (toAlignBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(toAlignBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillTop(toAlignBottom:    UIView,
                        spaces:   [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top(toBottom: toAlignBottom, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left(toAlignBottom, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(toAlignBottom, spacing: spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillTop(_ spaces: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        left (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillTop(_ spaces: [CGFloat],
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active:   Bool = true) -> UIView {
        
        top  (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        left (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spaces[2], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
