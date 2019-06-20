//
//  FillVertically.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillY(_ to:     UIView,
                      spaces:   CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top   (to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillY(_ to:    UIView,
                      spaces:   [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top  (to, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to top And bottom another View
    
    @discardableResult
    public func fillY(toTop:    UIView,
                      toBottom: UIView,
                      spaces:   CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top  (toBottom: toBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toTop: toTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillY(toTop:    UIView,
                      toBottom: UIView,
                      spaces:   [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top  (toBottom: toBottom, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toTop: toTop, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor to top And bottom another View with align
    
    @discardableResult
    public func fillY(toAlignTop:    UIView,
                      toAlignBottom: UIView,
                      spaces:   CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top   (toBottom: toAlignBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toTop: toAlignTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillY(toAlignTop:    UIView,
                      toAlignBottom: UIView,
                      spaces:   [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top  (toBottom: toAlignBottom, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toTop: toAlignTop, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillY(_ spaces: CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top  (spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillY(_ spaces: [CGFloat],
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active:   Bool = true) -> UIView {
        
        top  (spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
