//
//  Center.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func center(_ to: UIView,
                 moveX: CGFloat = 0,
                 moveY: CGFloat = 0,
                 safeArea: Bool = false,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        centerX(to, move: moveX, safeArea: safeArea, relation: relation, priority: priority, active: active)
        centerY(to, move: moveY, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func center(moveX: CGFloat = 0,
                 moveY: CGFloat = 0,
                 safeArea: Bool = false,
                 relation: ConstraintRelation = .equal,
                 priority: UILayoutPriority = .required,
                 active: Bool = true) -> UIView {
        
        centerX(moveX, safeArea: safeArea, relation: relation, priority: priority, active: active)
        centerY(moveY, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
}

