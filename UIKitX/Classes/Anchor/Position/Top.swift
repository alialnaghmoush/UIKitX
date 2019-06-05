//
//  Top.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func top(_ to: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .top : .topMargin
        return setAnchor(anchor: at, to: to, anchorTo: at, spacing: spacing, isSafeArea: safeArea, relation: relation, priority: priority, active: active)
    }
    
    @discardableResult
    public func top(toBottom: UIView,
                    spacing: CGFloat,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .top : .topMargin
        let ato: AnchorAttribute = !safeArea ? .bottom : .bottomMargin
        
        return setAnchor(anchor: at, to: toBottom, anchorTo: ato, spacing: spacing,
                        isSafeArea: safeArea, relation: relation, priority: priority, active: active)
    }
    
    
    @discardableResult
    public func top(_ spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .top : .topMargin
        return setAnchor(anchor: at, spacing: spacing, isSafeArea: safeArea,
                        relation: relation, priority: priority, active: active)
    }
    
    
    @discardableResult
    public func top(_ flexible: FlexibleAnchor,
                    safeArea: Bool = false,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .top : .topMargin
        return setAnchor(anchor: at, spacing: flexible.points, isSafeArea: safeArea,
                        relation: flexible.relation, priority: priority, active: active)
    }
    
    
}
