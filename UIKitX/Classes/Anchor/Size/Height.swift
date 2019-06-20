//
//  Height.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//


extension UIView {
    
    @discardableResult
    public func anchorHeight(_ set: CGFloat = 0,
                             relation: AnchorRelation = .equal,
                             priority: AnchorPriority = .required,
                             isActive: Bool = true ) -> Constraint {
        
        prepareLayout()
        
        switch relation {
        case .lessThanOrEqual: return heightAnchor.constraint(lessThanOrEqualToConstant: set).priority(priority).active(isActive)
        case .equal: return heightAnchor.constraint(equalToConstant: set).priority(priority).active(isActive)
        case .greaterThanOrEqual: return heightAnchor.constraint(greaterThanOrEqualToConstant: set).priority(priority).active(isActive)
        @unknown default: fatalError()
        }
        
    }
    
    @discardableResult
    public func height(_ set: CGFloat,
                relation: AnchorRelation = .equal,
                priority: AnchorPriority = .required,
                active: Bool = true) -> UIView {
        
        anchorHeight(set, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    @discardableResult
    public func height(_ set: CGFloat,
                       views: UIView...,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        anchorHeight(set, relation: relation, priority: priority, isActive: active)
        views.forEach { (view) in
            view.anchorHeight(set, relation: relation, priority: priority, isActive: active)
        }
        return self
    }
    
    
}
