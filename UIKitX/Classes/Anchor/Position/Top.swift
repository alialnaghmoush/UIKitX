//
//  Top.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xTop(to view: Anchorable,
              _ anchor: NSLayoutYAxisAnchor? = nil,
              spacing: CGFloat = 0,
              relation: ConstraintRelation = .equal,
              priority: UILayoutPriority = .required,
              isActive: Bool = true) -> Constraint {
        
        prepareForLayout()
        
        
        switch relation {
        case .equal:
            return topAnchor.constraint(equalTo: anchor ?? view.topAnchor, constant: spacing).with(priority).set(isActive)
        case .lessThanOrEqual:
            return topAnchor.constraint(lessThanOrEqualTo: anchor ?? view.topAnchor, constant: spacing).with(priority).set(isActive)
        case .greaterThanOrEqual:
            return topAnchor.constraint(greaterThanOrEqualTo: anchor ?? view.topAnchor, constant: spacing).with(priority).set(isActive)
        @unknown default:
            fatalError()
        }
        
    }
}

//extension UIView {
//
//    @discardableResult
//    public func top(_ to: Anchorable,
//                    spacing: CGFloat = 0,
//                    relation: ConstraintRelation = .equal,
//                    priority: UILayoutPriority = .required,
//                    active: Bool = true) -> UIView {
//
//        xTop(to: to, spacing: spacing, relation: relation, priority: priority, isActive: active)
//
//        return self
//    }
//
//    @discardableResult
//    public func top(_ anchorTo: NSLayoutYAxisAnchor,
//                    spacing: CGFloat = 0,
//                    relation: ConstraintRelation = .equal,
//                    priority: UILayoutPriority = .required,
//                    active: Bool = true) -> UIView {
//
//        let anchorable = safeAnchorable(for: superview)
//        xTop(to: anchorable, anchorTo, spacing: spacing, relation: relation, priority: priority, isActive: active)
//
//        return self
//    }
//
//    @discardableResult
//    public func top(_ spacing: CGFloat = 0,
//                    safeArea: Bool = false,
//                    anchor: NSLayoutYAxisAnchor? = nil,
//                    relation: ConstraintRelation = .equal,
//                    priority: UILayoutPriority = .required,
//                    active: Bool = true) -> UIView {
//
//        let anchorable = safeAnchorable(for: superview, usingSafeArea: safeArea)
//        xTop(to: anchorable, anchor, spacing: spacing, relation: relation, priority: priority, isActive: active)
//
//        return self
//    }
//}


extension UIView {
    
    @discardableResult
    public func top(_ to: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        //        let at: ConstraintAttribute = !safeArea ? .top : .topMargin
        
        let x = NSLayoutConstraint(item: self, attribute: .top, relatedBy: relation, toItem: to, attribute: .top, multiplier: 1, constant: spacing)
        
        x.priority = priority
        x.isActive = active
        
        let sv = safeView(superview)
        sv.addConstraint(x)
        self.layoutIfNeeded()
        
        return self
    }
    
    @discardableResult
    public func top(toBottom: UIView,
                    spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        //        let at: ConstraintAttribute = !safeArea ? .bottom : .bottomMargin
        
        let x = NSLayoutConstraint(item: self, attribute: .top, relatedBy: relation, toItem: toBottom, attribute: .bottomMargin, multiplier: 1, constant: spacing)
        
        x.priority = priority
        x.isActive = active
        
        let sv = safeView(superview)
        sv.addConstraint(x)
        self.layoutIfNeeded()
        
        return self
    }
    
    @discardableResult
    public func top(_ spacing: CGFloat = 0,
                    safeArea: Bool = false,
                    anchor: NSLayoutYAxisAnchor? = nil,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active: Bool = true) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        let sv = safeView(superview)
//        let at: ConstraintAttribute = !safeArea ? .top : .topMargin
        
        let x = NSLayoutConstraint(item: self, attribute: .top, relatedBy: relation, toItem: sv, attribute: .top, multiplier: 1, constant: spacing)
        
        x.priority = priority
        x.isActive = active
        
        sv.addConstraint(x)
        self.layoutIfNeeded()
        
        return self
    }
    
    
    
    
}
