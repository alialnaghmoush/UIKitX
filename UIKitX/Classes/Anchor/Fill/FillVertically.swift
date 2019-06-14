//
//  FillVertically.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Main Fill Vertically
    
    @discardableResult
    public func fillVertically(toTop:      UIView,
                               toBottom:  UIView,
                               spacTop:    CGFloat = 0,
                               spacBottom: CGFloat = 0,
                               safeArea:   Bool = false,
                               relation:   AnchorRelation = .equal,
                               priority:   AnchorPriority = .required,
                               active:     Bool = true) -> UIView {
        
        top(toBottom: toTop, spacing: spacTop, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toBottom, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To View
    
    @discardableResult
    public func fillVertically(toTop:    UIView,
                               toBottom: UIView,
                               spaces:   CGFloat = 0,
                               safeArea: Bool = false,
                               relation: AnchorRelation = .equal,
                               priority: AnchorPriority = .required,
                               active:   Bool = true) -> UIView {
        
        top(toBottom: toTop, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toTop: toBottom, spacing: spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func fillVertically(toTop:     UIView,
                               toBottom:  UIView,
                               spaces:   [CGFloat],
                               safeArea: Bool = false,
                               relation: AnchorRelation = .equal,
                               priority: AnchorPriority = .required,
                               active:   Bool = true) -> UIView {
        
        top(toBottom: toTop, spacing: spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(toTop: toBottom, spacing: spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - To superview
    
    @discardableResult
    public func fillVertically(_ spaces: CGFloat = 0,
                               safeArea: Bool = false,
                               relation: AnchorRelation = .equal,
                               priority: AnchorPriority = .required,
                               active:   Bool = true) -> UIView {
        
        top(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func fillVertically(_ spaces: [CGFloat],
                               safeArea: Bool = false,
                               relation: AnchorRelation = .equal,
                               priority: AnchorPriority = .required,
                               active:   Bool = true) -> UIView {
        
        top(spaces[0], safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spaces[1], safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
