//
//  CenterX.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func centerX(_ to: UIView,
                        move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .centerX : .centerXWithinMargins
        setAnchor(anchor: at, to: to, anchorTo: at, spacing: move, isSafeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    @discardableResult
    public func centerX(_ move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .centerX : .centerXWithinMargins
        setAnchor(anchor: at, spacing: move, isSafeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func centerX(_ move: FlexibleAnchor,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .centerX : .centerXWithinMargins
        setAnchor(anchor: at, spacing: move.points, isSafeArea: safeArea, relation: move.relation, priority: priority, active: active)
        
        return self
    }
    
}
