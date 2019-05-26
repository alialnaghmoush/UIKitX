//
//  Top.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func top(_ to: NSLayoutYAxisAnchor,
             spacing: CGFloat = 0,
             relation: ConstraintRelation = .equal,
             priority: UILayoutPriority = .required,
             active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal:
            x = self.topAnchor.constraint(equalTo: to)
            
        case .greaterThanOrEqual:
            x = self.topAnchor.constraint(greaterThanOrEqualTo: to)
            
        case .lessThanOrEqual:
            x = self.topAnchor.constraint(lessThanOrEqualTo: to)
            
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
    public func top(_ to: UIView,
             spacing: CGFloat = 0,
             safeArea: Bool = false,
             relation: ConstraintRelation = .equal,
             priority: UILayoutPriority = .required,
             active: Bool = true) -> UIView {
        
        if !safeArea {
            top(to.topAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            top(to.safeAreaLayoutGuide.topAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
    @discardableResult
    public func top(_ spacing: CGFloat = 0,
             safeArea: Bool = false,
             relation: ConstraintRelation = .equal,
             priority: UILayoutPriority = .required,
             active: Bool = true) -> UIView {
        
        let sv = safeSuperview(for: superview)
        if !safeArea {
            top(sv.topAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        } else {
            top(sv.safeAreaLayoutGuide.topAnchor, spacing: spacing, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
}
