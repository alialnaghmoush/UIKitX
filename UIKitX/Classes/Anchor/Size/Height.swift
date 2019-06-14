//
//  Height.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//


extension UIView {
    
    @discardableResult
    public func height(_ set: CGFloat,
                relation: AnchorRelation = .equal,
                priority: AnchorPriority = .required,
                active: Bool = true) -> UIView {
        
        setAnchor(set, anchor: .height, relation: relation, priority: priority, active: active)
        
        
        return self
        
    }
    
}
