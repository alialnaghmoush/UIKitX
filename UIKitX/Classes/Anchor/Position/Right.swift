//
//  Right.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public extension UIView {
    
    @discardableResult
    func right(_ to: NSLayoutXAxisAnchor,
               spacing: CGFloat = 0,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal:
            x = self.trailingAnchor.constraint(equalTo: to)
            
        case .greaterThanOrEqual:
            x = self.trailingAnchor.constraint(greaterThanOrEqualTo: to)
            
        case .lessThanOrEqual:
            x = self.trailingAnchor.constraint(lessThanOrEqualTo: to)
            
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
    func right(_ to: UIView,
               spacing: CGFloat = 0,
               safeArea: Bool = false,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               active: Bool = true) -> UIView {
        
        if !safeArea {
            right(to.trailingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            right(to.safeAreaLayoutGuide.trailingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        
        return self
    }
    
    @discardableResult
    func right(_ spacing: CGFloat = 0,
               safeArea: Bool = false,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               active: Bool = true) -> UIView {
        
        let sv = safeSuperview(for: superview)
        if !safeArea {
            right(sv.trailingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            right(sv.safeAreaLayoutGuide.trailingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
}
