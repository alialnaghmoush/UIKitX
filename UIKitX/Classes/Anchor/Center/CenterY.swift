//
//  CenterY.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//


extension UIView {
    
    @discardableResult
    public func centerY(_ to: UIView,
                        move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .centerY : .centerYWithinMargins
        setAnchor(anchor: at, to: to, anchorTo: at, padding: move, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    @discardableResult
    public func centerY(_ move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: AnchorRelation = .equal,
                        priority: AnchorPriority = .required,
                        active: Bool = true) -> UIView {
        
        let at: AnchorAttribute = !safeArea ? .centerY : .centerYWithinMargins
        setAnchor(anchor: at, padding: move, relation: relation, priority: priority, active: active)
        
        return self
    }
}

