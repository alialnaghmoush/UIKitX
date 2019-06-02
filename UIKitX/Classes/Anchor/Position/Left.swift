//
//  Left.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xLeft(to view: Anchorable,
               _ anchor: NSLayoutXAxisAnchor? = nil,
               spacing: CGFloat = 0,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        
        switch relation {
        case .equal:
            return leadingAnchor.constraint(equalTo: anchor ?? view.leadingAnchor, constant: spacing).with(priority).set(isActive)
        case .lessThanOrEqual:
            return leadingAnchor.constraint(lessThanOrEqualTo: anchor ?? view.leadingAnchor, constant: spacing).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return leadingAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.leadingAnchor, constant: spacing).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
    }
    
}

//extension UIView {
//
//    @discardableResult
//    public func left(_ to: Anchorable,
//                     spacing: CGFloat = 0,
//                     safeArea: Bool = false,
//                     relation: ConstraintRelation = .equal,
//                     priority: UILayoutPriority = .required,
//                     active: Bool = true) -> UIView {
//
//        xLeft(to: to, spacing: spacing, relation: relation, priority: priority, isActive: active)
//
//        return self
//    }
//
//    @discardableResult
//    public func left(_ anchorTo: NSLayoutXAxisAnchor,
//                     spacing: CGFloat = 0,
//                     relation: ConstraintRelation = .equal,
//                     priority: UILayoutPriority = .required,
//                     active: Bool = true) -> UIView {
//
//        let anchorable = safeAnchorable(for: superview)
//        xLeft(to: anchorable, anchorTo, spacing: spacing, relation: relation, priority: priority, isActive: active)
//
//        return self
//    }
//
//    @discardableResult
//    public func left(_ spacing: CGFloat = 0,
//                     safeArea: Bool = false,
//                     anchor: NSLayoutXAxisAnchor? = nil,
//                     relation: ConstraintRelation = .equal,
//                     priority: UILayoutPriority = .required,
//                     active: Bool = true) -> UIView {
//
//        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
//        xLeft(to: anchorable, anchor, spacing: spacing, relation: relation, priority: priority, isActive: active)
//
//        return self
//    }
//}


extension UIView {
    
    @discardableResult
    public func left(_ to: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
//        let at: ConstraintAttribute = !safeArea ? .leading : .leadingMargin

        let x = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: relation, toItem: to, attribute: .leading, multiplier: 1, constant: spacing)
        
        x.priority = priority
        x.isActive = active
        
        let sv = safeView(superview)
        sv.addConstraint(x)
        self.layoutIfNeeded()
        
        return self
    }
    
    @discardableResult
    public func left(toRight: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
//        let at: ConstraintAttribute = !safeArea ? .leading : .leadingMargin
        
        let x = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: relation, toItem: toRight, attribute: .trailing, multiplier: 1, constant: spacing)
        
        x.priority = priority
        x.isActive = active
        
        let sv = safeView(superview)
        sv.addConstraint(x)
        self.layoutIfNeeded()
        
        return self
    }
    
    @discardableResult
    public func left(_ spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    anchor: NSLayoutYAxisAnchor? = nil,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        let sv = safeView(superview)
        let at: ConstraintAttribute = !safeArea ? .leading : .leadingMargin
        
        let x = NSLayoutConstraint(item: self, attribute: at, relatedBy: relation, toItem: sv, attribute: .leading, multiplier: 1, constant: spacing)
        
        x.priority = priority
        x.isActive = active
        
        sv.addConstraint(x)
        self.layoutIfNeeded()
        return self
    }
    
}
