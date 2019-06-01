//
//  CenterX.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xCenterX(to view: Anchorable,
                 _ anchor: NSLayoutXAxisAnchor? = nil,
                 move: CGFloat = 0,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        switch relation {
        case .equal:
            return centerXAnchor.constraint(equalTo: anchor ?? view.centerXAnchor, constant: move).with(priority).set(isActive)
        case .lessThanOrEqual:
            return centerXAnchor.constraint(lessThanOrEqualTo: anchor ?? view.centerXAnchor, constant: move).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return centerXAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.centerXAnchor, constant: move).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
        
    }
}

extension UIView {
    
    @discardableResult
    public func centerX(_ to: Anchorable,
                        move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active: Bool = true) -> UIView {
        
        xCenterX(to: to, move: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func centerX(_ anchorTo: NSLayoutXAxisAnchor,
                    move: CGFloat = 0,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview)
        xCenterX(to: anchorable, anchorTo, move: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    @discardableResult
    public func centerX(_ move: CGFloat = 0,
                        safeArea: Bool = false,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xCenterX(to: anchorable, move: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
