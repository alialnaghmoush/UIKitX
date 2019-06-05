//
//  Right.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func right(_ to: UIView,
                     spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .trailing : .trailingMargin
        return setAnchor(anchor: at, to: to, anchorTo: at, spacing: -spacing, isSafeArea: safeArea,
                          relation: relation, priority: priority, active: active)
    }
    
    @discardableResult
    public func right(toLeft: UIView,
                     spacing: CGFloat,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .trailing : .trailingMargin
        let ato: AnchorAttribute = !safeArea ? .leading : .leadingMargin

        
        return setAnchor(anchor: at, to: toLeft, anchorTo: ato, spacing: -spacing,
                          isSafeArea: safeArea, relation: relation, priority: priority, active: active)
    }
    
    
    @discardableResult
    public func right(_ spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .trailing : .trailingMargin
        return setAnchor(anchor: at, spacing: -spacing, isSafeArea: safeArea,
                        relation: relation, priority: priority, active: active)
    }
    
    
    @discardableResult
    public func right(_ flexible: FlexibleAnchor,
                     safeArea: Bool = false,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .trailing : .trailingMargin
        return setAnchor(anchor: at, spacing: -flexible.points, isSafeArea: safeArea,
                        relation: flexible.relation, priority: priority, active: active)
    }
    
}
