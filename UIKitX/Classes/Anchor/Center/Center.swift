//
//  Center.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xCenter(in view: Anchorable,
                moveX: CGFloat = 0,
                moveY: CGFloat = 0,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                isActive: Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xCenterX(to: view, move: moveX, relation: relation, priority: priority, isActive: isActive),
            xCenterY(to: view, move: moveY, relation: relation, priority: priority, isActive: isActive)
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    @discardableResult
    public func center(_ to: Anchorable,
                       moveX: CGFloat = 0,
                       moveY: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        xCenter(in: to, moveX: moveX, moveY: moveY, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    @discardableResult
    public func center(moveX: CGFloat = 0,
                       moveY: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xCenter(in: anchorable, moveX: moveX, moveY: moveY, relation: relation, priority: priority, isActive: active)

        return self
    }
    
    @discardableResult
    public func center(_ move: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: ConstraintRelation = .equal,
                       priority: UILayoutPriority = .required,
                       active: Bool = true) -> UIView {
        
        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
        xCenter(in: anchorable, moveX: move, moveY: move, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
}
