//
//  Center.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//


extension UIView {
    
    @discardableResult
    public func center(_ to: UIView,
                       moveX: CGFloat = 0,
                       moveY: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        centerX(to, move: moveX, safeArea: safeArea, relation: relation, priority: priority, active: active)
        centerY(to, move: moveY, safeArea: safeArea, relation: relation, priority: priority, active: active)

        
        return self
    }
    
    @discardableResult
    public func center(moveX: CGFloat = 0,
                       moveY: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        centerX(moveX, safeArea: true, relation: relation, priority: priority, active: active)
        centerY(moveY, safeArea: true, relation: relation, priority: priority, active: active)
        
        
        return self
    }
    
    @discardableResult
    public func center(_ move: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        centerX(move, safeArea: true, relation: relation, priority: priority, active: active)
        centerY(move, safeArea: true, relation: relation, priority: priority, active: active)

        return self
    }
    
}
