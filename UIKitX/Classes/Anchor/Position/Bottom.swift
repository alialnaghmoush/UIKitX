//
//  Bottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xBottom(to view: Anchorable,
                 _ anchor: NSLayoutYAxisAnchor? = nil,
                 spacing: CGFloat = 0,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        
        switch relation {
        case .equal:
            return bottomAnchor.constraint(equalTo: anchor ?? view.bottomAnchor, constant: -spacing).with(priority).set(isActive)
        case .lessThanOrEqual:
            return bottomAnchor.constraint(lessThanOrEqualTo: anchor ?? view.bottomAnchor, constant: -spacing).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return bottomAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.bottomAnchor, constant: -spacing).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
    }
    
}

extension UIView {
    
    @discardableResult
    public func bottom(_ to: Anchorable,
                       spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        xBottom(to: to, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func bottom(_ anchor: NSLayoutYAxisAnchor? = nil,
                       spacing: CGFloat = 0,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview)
        xBottom(to: anchorable, anchor, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func bottom(_ spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       anchor: NSLayoutYAxisAnchor? = nil,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xBottom(to: anchorable, anchor, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
}
