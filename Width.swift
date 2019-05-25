//
//  Width.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func width(_ size: CGFloat,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        
        switch relation {
        case .equal:
            x = self.widthAnchor.constraint(equalToConstant: size)
            
        case .greaterThanOrEqual:
            x = self.widthAnchor.constraint(greaterThanOrEqualToConstant: size)
            
        case .lessThanOrEqual:
            x = self.widthAnchor.constraint(lessThanOrEqualToConstant: size)
            
        @unknown default:
            fatalError()
        }
        
        x.isActive = active
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
        
    }
    
}

