//
//  Right.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xRight(to view: Anchorable,
                _ anchor: NSLayoutXAxisAnchor? = nil,
                spacing: CGFloat = 0,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        
        switch relation {
        case .equal:
            return trailingAnchor.constraint(equalTo: anchor ?? view.trailingAnchor, constant: -spacing).with(priority).set(isActive)
        case .lessThanOrEqual:
            return trailingAnchor.constraint(lessThanOrEqualTo: anchor ?? view.trailingAnchor, constant: -spacing).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return trailingAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.trailingAnchor, constant: -spacing).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
    }
    
}

extension UIView {
    
    @discardableResult
    public func right(_ to: Anchorable,
                      spacing: CGFloat = 0,
                      safeArea: Bool = false,
                      relation: ConstraintRelation = .equal,
                      priority: UILayoutPriority = .required,
                      active: Bool = true) -> UIView {
        
        xRight(to: to, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func right(_ anchorTo: NSLayoutXAxisAnchor? = nil,
                      spacing: CGFloat = 0,
                      relation: ConstraintRelation = .equal,
                      priority: UILayoutPriority = .required,
                      active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview)
        xRight(to: anchorable, anchorTo, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func right(_ spacing: CGFloat = 0,
                      safeArea: Bool = false,
                      anchor: NSLayoutXAxisAnchor? = nil,
                      relation: ConstraintRelation = .equal,
                      priority: UILayoutPriority = .required,
                      active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xRight(to: anchorable, anchor, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
}
