//
//  CenterY.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func centerY(_ to: NSLayoutYAxisAnchor,
                        move: CGFloat = 0,
                        relation: ConstraintRelation = .equal,
                        priority: UILayoutPriority = .required,
                        active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal: x = self.centerYAnchor.constraint(equalTo: to)
        case .greaterThanOrEqual: x = self.centerYAnchor.constraint(greaterThanOrEqualTo: to)
        case .lessThanOrEqual: x = self.centerYAnchor.constraint(lessThanOrEqualTo: to)
        @unknown default: fatalError()
        }
        
        x.isActive = active
        x.constant = move
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
        
    }
    
    @discardableResult
    public func centerY(_ to: UIView,
                 move: CGFloat = 0,
                 safeArea: Bool = false,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        if !safeArea {
            centerY(to.centerYAnchor, move: move, relation: relation, priority: priority, active: active)
        } else {
            centerY(to.safeAreaLayoutGuide.centerYAnchor, move: move, relation: relation, priority: priority, active: active)
        }
        
        return self
        
    }
    
    @discardableResult
    public func centerY(_ move: CGFloat = 0,
                 safeArea: Bool = false,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        let sv = safeSuperview(for: superview)
        if !safeArea {
            centerY(sv.centerYAnchor, move: move, relation: relation, priority: priority, active: active)
        } else {
            centerY(sv.safeAreaLayoutGuide.centerYAnchor, move: move, relation: relation, priority: priority, active: active)
        }
        
        return self
        
    }
    
}

