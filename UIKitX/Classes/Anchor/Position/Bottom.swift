//
//  Bottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func bottom(_ to: UIView,
                       spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? to : to.safeAreaLayoutGuide
        return setAnchor(anchor: .bottom, to: sav, anchorTo: .bottom, padding: -spacing,
                         relation: relation, priority: priority, active: active)
        
    }
    
    @discardableResult
    public func bottom(toTop: UIView,
                       spacing: CGFloat,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? toTop : toTop.safeAreaLayoutGuide
        return setAnchor(anchor: .bottom, to: sav, anchorTo: .top, padding: -spacing,
                         relation: relation, priority: priority, active: active)
        
    }
    
    
    @discardableResult
    public func bottom(_ spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        return setAnchor(anchor: .bottom, padding: -spacing, safeArea: safeArea, relation: relation, priority: priority, active: active)
    }

    
}
