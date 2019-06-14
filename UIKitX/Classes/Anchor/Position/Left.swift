//
//  Left.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func left(_ to:     UIView,
                     spacing:  CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        
        let sav: Any = !safeArea ? to : to.safeAreaLayoutGuide
        return setAnchor(anchor: .leading, to: sav, anchorTo: .leading, padding: spacing,
                         relation: relation, priority: priority, active: active)
    }
    
    @discardableResult
    public func left(toRight:  UIView,
                     spacing:  CGFloat,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? toRight : toRight.safeAreaLayoutGuide
        return setAnchor(anchor: .leading, to: sav, anchorTo: .trailing, padding: spacing,
                         relation: relation, priority: priority, active: active)
        
    }
    
    
    @discardableResult
    public func left(_ spacing: CGFloat = 0,
                     safeArea:  Bool = false,
                     relation:  AnchorRelation = .equal,
                     priority:  AnchorPriority = .required,
                     active:    Bool = true) -> UIView {
        
        return setAnchor(anchor: .leading, padding: spacing, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
    }
    
}
