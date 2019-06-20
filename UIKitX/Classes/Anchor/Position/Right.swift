//
//  Right.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func anchorRight(to: NSLayoutXAxisAnchor,
                            padding: CGFloat = 0,
                            relation: AnchorRelation = .equal,
                            priority: AnchorPriority = .required,
                            isActive: Bool = true ) -> Constraint {
        
        prepareLayout()
        
        switch relation {
        case .lessThanOrEqual: return trailingAnchor.constraint(lessThanOrEqualTo: to).padding(-padding).priority(priority).active(isActive)
        case .equal: return trailingAnchor.constraint(equalTo: to).padding(-padding).priority(priority).active(isActive)
        case .greaterThanOrEqual: return trailingAnchor.constraint(greaterThanOrEqualTo: to).padding(-padding).priority(priority).active(isActive)
        @unknown default: fatalError()
        }
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the left view to another View
    
    @discardableResult
    public func right(_ to: UIView,
                      spacing: CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active: Bool = true) -> UIView {
        
        let sav = !safeArea ? to.trailingAnchor : to.safeArea.trailingAnchor
        anchorRight(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the left view to right another View
    @discardableResult
    public func right(toLeft: UIView,
                      spacing: CGFloat,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active: Bool = true) -> UIView {
        
        let sav = !safeArea ? toLeft.leadingAnchor : toLeft.safeArea.leadingAnchor
        anchorRight(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to left superview
    @discardableResult
    public func right(_ spacing: CGFloat = 0,
                      safeArea: Bool = false,
                      relation: AnchorRelation = .equal,
                      priority: AnchorPriority = .required,
                      active: Bool = true) -> UIView {
        
        let sav = !safeArea ? safeSuperview.trailingAnchor : safeSuperview.safeArea.trailingAnchor
        anchorRight(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
        
    }
    
}
