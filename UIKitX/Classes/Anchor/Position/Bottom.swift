//
//  Bottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func bottom(_ to: UIView,
                       spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .bottom : .bottomMargin
        return setAnchor(anchor: at, to: to, anchorTo: at, spacing: -spacing, isSafeArea: safeArea, relation: relation, priority: priority, active: active)
    }
    
    @discardableResult
    public func bottom(toTop: UIView,
                       spacing: CGFloat,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .bottom : .bottomMargin
        let ato: AnchorAttribute = !safeArea ? .top : .topMargin
        
        return setAnchor(anchor: at, to: toTop, anchorTo: ato, spacing: -spacing,
                        isSafeArea: safeArea, relation: relation, priority: priority, active: active)
    }
    
    
    @discardableResult
    public func bottom(_ spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .bottom : .bottomMargin
        return setAnchor(anchor: at, spacing: -spacing, isSafeArea: safeArea,
                        relation: relation, priority: priority, active: active)
    }
    
    
    @discardableResult
    public func bottom(_ flexible: FlexibleAnchor,
                       safeArea: Bool = false,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .bottom : .bottomMargin
        return setAnchor(anchor: at, spacing: -flexible.points, isSafeArea: safeArea,
                        relation: flexible.relation, priority: priority, active: active)
    }
    
}
