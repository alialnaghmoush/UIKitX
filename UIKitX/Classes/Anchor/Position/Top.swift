//
//  Top.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func top(_ to: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? to : to.safeAreaLayoutGuide
        return setAnchor(anchor: .top, to: sav, anchorTo: .top, padding: spacing,
                         relation: relation, priority: priority, active: active)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the top view to Bottom another View
    @discardableResult
    public func top(toBottom: UIView,
                    spacing: CGFloat,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let sav: Any = !safeArea ? toBottom : toBottom.safeAreaLayoutGuide
        return setAnchor(anchor: .top, to: sav, anchorTo: .bottom, padding: spacing,
                         relation: relation, priority: priority, active: active)
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to top superview
    @discardableResult
    public func top(_ spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        return setAnchor(anchor: .top, padding: spacing, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
    }
    
}
