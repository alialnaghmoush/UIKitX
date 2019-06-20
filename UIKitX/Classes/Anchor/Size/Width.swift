//
//  Width.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    
    @discardableResult
    public func anchorWidth(_ set: CGFloat = 0,
                            relation: AnchorRelation = .equal,
                            priority: AnchorPriority = .required,
                            isActive: Bool = true ) -> Constraint {
        
        switch relation {
        case .lessThanOrEqual: return widthAnchor.constraint(lessThanOrEqualToConstant: set).priority(priority).active(isActive)
        case .equal: return widthAnchor.constraint(equalToConstant: set).priority(priority).active(isActive)
        case .greaterThanOrEqual: return widthAnchor.constraint(greaterThanOrEqualToConstant: set).priority(priority).active(isActive)
        @unknown default: fatalError()
        }
        
    }
    
    @discardableResult
    public func width(_ set: CGFloat,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active: Bool = true) -> UIView {
        
        anchorWidth(set, relation: relation, priority: priority, isActive: active)
        return self
        
    }
    
    @discardableResult
    public func width(_ set: CGFloat,
                      views: UIView...,
        relation: AnchorRelation = .equal,
        priority: AnchorPriority = .required,
        active: Bool = true) -> UIView {
        
        anchorWidth(set, relation: relation, priority: priority, isActive: active)
        views.forEach { (view) in
            view.anchorWidth(set, relation: relation, priority: priority, isActive: active)
        }
        return self
    }
}
