//
//  Width.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xWidth(_ set: CGFloat,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        switch relation {
        case .equal: return widthAnchor.constraint(equalToConstant: set).with(priority).set(isActive)
        case .lessThanOrEqual: return widthAnchor.constraint(lessThanOrEqualToConstant: set).with(priority).set(isActive)
        case .greaterThanOrEqual: return widthAnchor.constraint(greaterThanOrEqualToConstant: set).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
    }
    
}

extension UIView {
    
    @discardableResult
    public func width(_ set: CGFloat,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        xWidth(set, relation: relation, priority: priority, isActive: active)
        
        return self
        
    }
    
}
