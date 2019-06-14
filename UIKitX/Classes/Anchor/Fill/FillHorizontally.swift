//
//  FillHorizontally.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Horizontally
    
    @discardableResult
    public func fillHorizontally(toleft:    UIView,
                                 toRight:   UIView,
                                 spacLeft:  CGFloat = 0,
                                 spacRight: CGFloat = 0,
                                 safeArea:  Bool = false,
                                 relation:  AnchorRelation = .equal,
                                 priority:  AnchorPriority = .required,
                                 active:    Bool = true) -> UIView {
        
        left(toRight: toleft, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(toLeft: toRight, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillHorizontally(toleft:    UIView,
                                 toRight:   UIView,
                                 spaces:   CGFloat = 0,
                                 safeArea: Bool = false,
                                 relation: AnchorRelation = .equal,
                                 priority: AnchorPriority = .required,
                                 active:   Bool = true) -> UIView {
        
        left(toRight: toleft, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(toLeft: toRight, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(toleft:    UIView,
                                 toRight:   UIView,
                                 spaces:   [CGFloat],
                                 safeArea: Bool = false,
                                 relation: AnchorRelation = .equal,
                                 priority: AnchorPriority = .required,
                                 active:   Bool = true) -> UIView {
        
        left(toRight: toleft, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(toLeft: toRight, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillHorizontally(_ spaces: CGFloat = 0,
                                 safeArea: Bool = false,
                                 relation: AnchorRelation = .equal,
                                 priority: AnchorPriority = .required,
                                 active:   Bool = true) -> UIView {
        
        left(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillHorizontally(_ spaces: [CGFloat],
                                 safeArea: Bool = false,
                                 relation: AnchorRelation = .equal,
                                 priority: AnchorPriority = .required,
                                 active:   Bool = true) -> UIView {
        
        left(spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
