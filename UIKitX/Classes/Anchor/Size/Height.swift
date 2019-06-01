//
//  Height.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
        
    @discardableResult
    func xHeight(_ set: CGFloat,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        switch relation {
        case .equal: return heightAnchor.constraint(equalToConstant: set).with(priority).set(isActive)
        case .lessThanOrEqual: return heightAnchor.constraint(lessThanOrEqualToConstant: set).with(priority).set(isActive)
        case .greaterThanOrEqual: return heightAnchor.constraint(greaterThanOrEqualToConstant: set).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
    }
    
}

extension UIView {
    
    @discardableResult
    public func height(_ set: CGFloat,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                active: Bool = true) -> UIView {
        
        xHeight(set, relation: relation, priority: priority, isActive: active)
        
        return self
        
    }
    
}
