//
//  CenterY.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xCenterY(to view: Anchorable,
                  _ anchor: NSLayoutYAxisAnchor? = nil,
                  move: CGFloat = 0,
                  relation: ConstraintRelation = .equal,
                  priority: UILayoutPriority = .required,
                  isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        switch relation {
        case .equal:
            return centerYAnchor.constraint(equalTo: anchor ?? view.centerYAnchor, constant: move).with(priority).set(isActive)
        case .lessThanOrEqual:
            return centerYAnchor.constraint(lessThanOrEqualTo: anchor ?? view.centerYAnchor, constant: move).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return centerYAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.centerYAnchor, constant: move).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
        
    }
}

extension UIView {
    
    @discardableResult
    public func centerY(_ to: Anchorable,
                        move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active: Bool = true) -> UIView {
        
        xCenterY(to: to, move: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func centerY(_ anchorTo: NSLayoutYAxisAnchor,
                        move: CGFloat = 0,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview)
        xCenterY(to: anchorable, anchorTo, move: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    @discardableResult
    public func centerY(_ move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xCenterY(to: anchorable, move: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}

