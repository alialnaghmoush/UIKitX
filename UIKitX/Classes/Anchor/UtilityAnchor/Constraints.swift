//
//  Constraints.swift
//  Pods
//
//  Created by Ali AlNaghmoush on 31/05/2019.
//



public extension Constraint {
    @objc
    func with(_ p: UILayoutPriority) -> Self {
        priority = p
        return self
    }
    
    func set(_ active: Bool) -> Self {
        isActive = active
        return self
    }
}

public extension Collection where Iterator.Element == Constraint {
    
    func activate() {
        
        if let constraints = self as? Constraints {
            Constraint.activate(constraints)
        }
    }
    
    func deActivate() {
        
        if let constraints = self as? Constraints {
            Constraint.deactivate(constraints)
        }
    }
}
