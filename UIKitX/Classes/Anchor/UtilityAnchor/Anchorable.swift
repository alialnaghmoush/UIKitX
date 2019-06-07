//
//  Anchorable.swift
//  Pods
//
//  Created by Ali AlNaghmoush on 31/05/2019.
//


extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set new anchor with View
    @discardableResult
    public func setAnchor(anchor: AnchorAttribute,
                          to: UIView,
                          anchorTo: AnchorAttribute,
                          spacing: CGFloat = 0,
                          isSafeArea: Bool = false,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          active: Bool = true) -> UIView {
        
        let sv = safeView(superview)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let c = NSLayoutConstraint(item: self, attribute: anchor, relatedBy: relation,
                                   toItem: to, attribute: anchorTo, multiplier: 1,
                                   constant: spacing)
        
        sv.addConstraint(c)
        sv.layoutIfNeeded()
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set new anchor with superview
    @discardableResult
    public func setAnchor(anchor: AnchorAttribute,
                          spacing: CGFloat = 0,
                          isSafeArea: Bool = false,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          active: Bool = true) -> UIView {
        
        let sv = safeView(superview)
        self.translatesAutoresizingMaskIntoConstraints = false
        let c = NSLayoutConstraint(item: self, attribute: anchor, relatedBy: relation,
                                   toItem: sv, attribute: anchor, multiplier: 1,
                                   constant: spacing)
        
        sv.addConstraint(c)
        sv.layoutIfNeeded()
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to superview
    @discardableResult
    public func setAnchor(_ spacing: CGFloat = 0,
                          anchor: AnchorAttribute,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        let c = NSLayoutConstraint(item: self, attribute: anchor, relatedBy: relation,
                                   toItem: nil, attribute: .notAnAttribute, multiplier: 1,
                                   constant: spacing)
        
        if let sv = superview {
            sv.addConstraint(c)
            sv.layoutIfNeeded()
        } else {
            addConstraint(c)
            layoutIfNeeded()
        }
        
        return self
    }
    
}

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - return func Anchor (priority or isActive)

extension Constraint {
    @objc
    public func with(_ p: UILayoutPriority) -> Self {
        priority = p
        return self
    }
    
    public func set(_ active: Bool) -> Self {
        isActive = active
        return self
    }
}
