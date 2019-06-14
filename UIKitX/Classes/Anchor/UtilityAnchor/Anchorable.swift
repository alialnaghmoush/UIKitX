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
                          to: Any,
                          anchorTo: AnchorAttribute,
                          padding: CGFloat = 0,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          active: Bool = true) -> UIView {
        
        let sv = safeView(superview)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let c = Constraint(item: self, attribute: anchor, relatedBy: relation,
                           toItem: to, attribute: anchorTo, multiplier: 1,
                           constant: padding)
        
        c.priority = priority
        c.isActive = active

        sv.addConstraint(c)
        sv.layoutIfNeeded()

        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set new anchor with superview
    @discardableResult
    public func setAnchor(anchor: AnchorAttribute,
                          padding: CGFloat = 0,
                          safeArea: Bool = false,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          active: Bool = true) -> UIView {
        
        var c = NSLayoutConstraint()
        let sv = safeView(superview)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let sav: Any = !safeArea ? sv : sv.safeAreaLayoutGuide
        c = Constraint(item: self, attribute: anchor, relatedBy: relation,
                       toItem: sav, attribute: anchor, multiplier: 1,
                       constant: padding)
        
        c.priority = priority
        c.isActive = active
        
        sv.addConstraint(c)
        sv.layoutIfNeeded()

        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Set anchor with spacing to superview
    @discardableResult
    public func setAnchor(_ padding: CGFloat = 0,
                          anchor: AnchorAttribute,
                          relation: AnchorRelation = .equal,
                          priority: AnchorPriority = .required,
                          active: Bool = true) -> UIView {
        
        let sv = safeView(superview)
        self.translatesAutoresizingMaskIntoConstraints = false
        let c = Constraint(item: self, attribute: anchor, relatedBy: relation,
                           toItem: nil, attribute: .notAnAttribute, multiplier: 1,
                           constant: padding)
        
        c.priority = priority
        c.isActive = active
        
        sv.addConstraint(c)
        sv.layoutIfNeeded()
        
//        if  sv == superview {
//            sv.addConstraint(c)
//            sv.layoutIfNeeded()
//        }
//        } else {
//            addConstraint(c)
//            layoutIfNeeded()
//        }
        
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
