//
//  CenterX.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public extension UIView {
    
    @discardableResult
    func centerX(_ to: NSLayoutXAxisAnchor,
                 move: CGFloat = 0,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal:
            x = self.centerXAnchor.constraint(equalTo: to)
            
        case .greaterThanOrEqual:
            x = self.centerXAnchor.constraint(greaterThanOrEqualTo: to)
            
        case .lessThanOrEqual:
            x = self.centerXAnchor.constraint(lessThanOrEqualTo: to)
            
        @unknown default:
            fatalError()
        }
        
        x.isActive = active
        x.constant = move
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
        
    }
    
    @discardableResult
    func centerX(_ to: UIView,
                 move: CGFloat = 0,
                 safeArea: Bool = false,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        if !safeArea {
            centerX(to.centerXAnchor, move: move, relation: relation, priority: priority, active: active)
        } else {
            centerX(to.safeAreaLayoutGuide.centerXAnchor, move: move, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
    
    
    @discardableResult
    func centerX(_ move: CGFloat = 0,
                 safeArea: Bool = false,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        let sv = safeSuperview(for: superview)
        if !safeArea {
            centerX(sv.centerXAnchor, move: move, relation: relation, priority: priority, active: active)
        } else {
            centerX(sv.safeAreaLayoutGuide.centerXAnchor, move: move, relation: relation, priority: priority, active: active)
        }
        
        return self
    }
    
}
