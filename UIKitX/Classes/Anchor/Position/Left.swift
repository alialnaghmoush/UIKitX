//
//  Left.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func anchorLeft(to: NSLayoutXAxisAnchor,
                           padding: CGFloat = 0,
                           relation: AnchorRelation = .equal,
                           priority: AnchorPriority = .required,
                           isActive: Bool = true ) -> Constraint {
        
        prepareLayout()
        
        switch relation {
        case .lessThanOrEqual: return leadingAnchor.constraint(lessThanOrEqualTo: to).padding(padding).priority(priority).active(isActive)
        case .equal: return leadingAnchor.constraint(equalTo: to).padding(padding).priority(priority).active(isActive)
        case .greaterThanOrEqual: return leadingAnchor.constraint(greaterThanOrEqualTo: to).padding(padding).priority(priority).active(isActive)
        @unknown default: fatalError()
        }
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the left view to another View
    
    @discardableResult
    public func left(_ to: UIView,
                     spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let sav = !safeArea ? to.leadingAnchor : to.safeArea.leadingAnchor
        anchorLeft(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor the left view to right another View
    @discardableResult
    public func left(toRight: UIView,
                     spacing: CGFloat,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let sav = !safeArea ? toRight.trailingAnchor : toRight.safeArea.trailingAnchor
        anchorLeft(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to left superview
    @discardableResult
    public func left(_ spacing: CGFloat = 0,
                     safeArea: Bool = false,
                     relation: AnchorRelation = .equal,
                     priority: AnchorPriority = .required,
                     active: Bool = true) -> UIView {
        
        let sav = !safeArea ? safeSuperview.leadingAnchor : safeSuperview.safeArea.leadingAnchor
        anchorLeft(to: sav, padding: spacing, relation: relation, priority: priority, isActive: active)
        return self
        
    }
    
}
