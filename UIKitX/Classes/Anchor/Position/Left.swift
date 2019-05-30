//
//  Left.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func left(_ to: NSLayoutXAxisAnchor,
                     spacing: CGFloat = 0,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal:
            x = self.leadingAnchor.constraint(equalTo: to)
        case .greaterThanOrEqual:
            x = self.leadingAnchor.constraint(greaterThanOrEqualTo: to)
        case .lessThanOrEqual:
            x = self.leadingAnchor.constraint(lessThanOrEqualTo: to)
        @unknown default:
            fatalError()
        }
        
        x.isActive = active
        x.constant = spacing
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
    }
    
    @discardableResult
    public func left(_ to: UIView,
                     spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        if !safeArea {
            left(to.leadingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            left(to.safeAreaLayoutGuide.leadingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
    @discardableResult
    public func left(_ spacing: CGFloat = 0,
            	  safeArea: Bool = false,
            	  relation: ConstraintRelation = .equal,
            	  priority: UILayoutPriority = .required,
            	  active: Bool = true) -> UIView {
        
        let sv = safeSuperview(for: superview)
        if !safeArea {
            left(sv.leadingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            left(sv.safeAreaLayoutGuide.leadingAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
}
