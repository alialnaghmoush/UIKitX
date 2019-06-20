//
//  Top.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func anchorTop(to: NSLayoutYAxisAnchor,
                          padding: CGFloat = 0,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          isActive: Bool = true ) -> Constraint {
        
        prepareLayout()
        
        switch relation {
        case .lessThanOrEqual: return topAnchor.constraint(lessThanOrEqualTo: to).padding(padding).priority(priority).active(isActive)
        case .equal: return topAnchor.constraint(equalTo: to).padding(padding).priority(priority).active(isActive)
        case .greaterThanOrEqual: return topAnchor.constraint(greaterThanOrEqualTo: to).padding(padding).priority(priority).active(isActive)
        @unknown default: fatalError()
        }
                
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the top view to another View
    
    @discardableResult
    public func top(_ to: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let sav = !safeArea ? to.topAnchor : to.safeArea.topAnchor
        anchorTop(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
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
        
        let sav = !safeArea ? toBottom.bottomAnchor : toBottom.safeArea.bottomAnchor
        anchorTop(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to top superview
    @discardableResult
    public func top(_ spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: AnchorRelation = .equal,
                    priority: AnchorPriority = .required,
                    active: Bool = true) -> UIView {
        
        let sav = !safeArea ? safeSuperview.topAnchor : safeSuperview.safeArea.topAnchor
        anchorTop(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
                
    }
    
}
