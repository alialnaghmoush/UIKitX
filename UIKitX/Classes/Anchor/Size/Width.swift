//
//  Width.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func width(_ set: CGFloat,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        setAnchor(set, anchor: .width, relation: relation, priority: priority, active: active)
        
        return self
        
    }    
}
