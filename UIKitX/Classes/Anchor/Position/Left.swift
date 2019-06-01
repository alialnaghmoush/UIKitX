//
//  Left.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xLeft(to view: Anchorable,
               _ anchor: NSLayoutXAxisAnchor? = nil,
               spacing: CGFloat = 0,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        
        switch relation {
        case .equal:
            return leadingAnchor.constraint(equalTo: anchor ?? view.leadingAnchor, constant: spacing).with(priority).set(isActive)
        case .lessThanOrEqual:
            return leadingAnchor.constraint(lessThanOrEqualTo: anchor ?? view.leadingAnchor, constant: spacing).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return leadingAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.leadingAnchor, constant: spacing).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
    }
    
}

extension UIView {
    
    @discardableResult
    public func left(_ to: Anchorable,
                     spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        xLeft(to: to, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func left(_ anchorTo: NSLayoutXAxisAnchor,
                     spacing: CGFloat = 0,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview)
        xLeft(to: anchorable, anchorTo, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func left(_ spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     anchor: NSLayoutXAxisAnchor? = nil,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xLeft(to: anchorable, anchor, spacing: spacing, relation: relation, priority: priority, isActive: active)
        
        return self
    }
}
