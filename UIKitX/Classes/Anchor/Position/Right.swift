//
//  Right.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func right(_ to: UIView,
                     spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? to : to.safeAreaLayoutGuide
        return setAnchor(anchor: .trailing, to: sav, anchorTo: .trailing, padding: -spacing,
                         relation: relation, priority: priority, active: active)
    }
    
    @discardableResult
    public func right(toLeft: UIView,
                     spacing: CGFloat,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? toLeft : toLeft.safeAreaLayoutGuide
        return setAnchor(anchor: .trailing, to: sav, anchorTo: .leading, padding: -spacing,
                         relation: relation, priority: priority, active: active)

    }
    
    
    @discardableResult
    public func right(_ spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        return setAnchor(anchor: .trailing, padding: -spacing, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
    }
    
}
