//
//  Bottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//



extension UIView {
    
    @discardableResult
    public func anchorBottom(to: NSLayoutYAxisAnchor,
                             padding: CGFloat = 0,
                             relation: AnchorRelation = .equal,
                             priority: AnchorPriority = .required,
                             isActive: Bool = true ) -> Constraint {
        
        prepareLayout()
        
        switch relation {
        case .lessThanOrEqual: return bottomAnchor.constraint(lessThanOrEqualTo: to).padding(-padding).priority(priority).active(isActive)
        case .equal: return bottomAnchor.constraint(equalTo: to).padding(-padding).priority(priority).active(isActive)
        case .greaterThanOrEqual: return bottomAnchor.constraint(greaterThanOrEqualTo: to).padding(-padding).priority(priority).active(isActive)
        @unknown default: fatalError()
        }
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the bottom view to another View
    
    @discardableResult
    public func bottom(_ to: UIView,
                       spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let sav = !safeArea ? to.bottomAnchor : to.safeArea.bottomAnchor
        anchorBottom(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the bottom view to top another View
    @discardableResult
    public func bottom(toTop: UIView,
                       spacing: CGFloat,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let sav = !safeArea ? toTop.topAnchor : toTop.safeArea.topAnchor
        anchorBottom(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to bottom superview
    @discardableResult
    public func bottom(_ spacing: CGFloat = 0,
                       safeArea: Bool = false,
                       relation: AnchorRelation = .equal,
                       priority: AnchorPriority = .required,
                       active: Bool = true) -> UIView {
        
        let sav = !safeArea ? safeSuperview.bottomAnchor : safeSuperview.safeArea.bottomAnchor
        anchorBottom(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
        
    }
    
}
