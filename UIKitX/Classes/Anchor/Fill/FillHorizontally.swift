//
//  FillHorizontally.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillX(_ to:     UIView,
                      spaces:   CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillX(_ to:    UIView,
                      spaces:   [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to left and Right another View
    
    @discardableResult
    public func fillX(toLeft:     UIView,
                      toRight:     UIView,
                      spaces:   CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (toRight: toRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (toLeft: toLeft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillX(toLeft:     UIView,
                      toRight:     UIView,
                      spaces:   [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (toRight: toRight, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (toLeft: toLeft, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to left and Right another View with align
    
    @discardableResult
    public func fillX(toAlignLeft:     UIView,
                      toAlignRight:     UIView,
                      spaces:   CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (toRight: toAlignRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (toLeft: toAlignLeft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillX(toAlignLeft:     UIView,
                      toAlignRight:     UIView,
                      spaces:   [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (toRight: toAlignRight, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (toLeft: toAlignLeft, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillX(_ spaces: CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillX(_ spaces: [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        left   (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right  (spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
