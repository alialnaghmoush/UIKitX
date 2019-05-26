//
//  Bottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public extension UIView {
    
    @discardableResult
    func bottom(_ to: NSLayoutYAxisAnchor,
                spacing: CGFloat = 0,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal:
            x = self.bottomAnchor.constraint(equalTo: to)
            
        case .greaterThanOrEqual:
            x = self.bottomAnchor.constraint(greaterThanOrEqualTo: to)
            
        case .lessThanOrEqual:
            x = self.bottomAnchor.constraint(lessThanOrEqualTo: to)
            
        @unknown default:
            fatalError()
        }
        
        x.isActive = active
        x.constant = -spacing
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
    }
    
    @discardableResult
    func bottom(_ to: UIView,
                spacing: CGFloat = 0,
                safeArea: Bool = false,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                active: Bool = true) -> UIView {
        
        if !safeArea {
            bottom(to.bottomAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            bottom(to.safeAreaLayoutGuide.bottomAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        
        return self
    }
    
    @discardableResult
    func bottom(_ spacing: CGFloat = 0,
                safeArea: Bool = false,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                active: Bool = true) -> UIView {
        
        let sv = safeSuperview(for: superview)
        if !safeArea {
            bottom(sv.bottomAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            bottom(sv.safeAreaLayoutGuide.bottomAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
}

