//
//  Size.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func size(_ h: CGFloat,
                     _ w: CGFloat,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        height(h, relation: relation, priority: priority, active: active)
        width(w, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    @discardableResult
    public func size(_ set: CGFloat,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        size(set, set, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func size(_ set: [CGFloat],
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        size(set[0], set[1], relation: relation, priority: priority, active: active)
        
        return self
    }
    
}
