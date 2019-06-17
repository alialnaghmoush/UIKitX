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
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        height(h, relation: relation, priority: priority, active: active)
        width (w, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    public func size(_ set: CGFloat,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        height(set, relation: relation, priority: priority, active: active)
        width (set, relation: relation, priority: priority, active: active)
        
        return self
    }
}
