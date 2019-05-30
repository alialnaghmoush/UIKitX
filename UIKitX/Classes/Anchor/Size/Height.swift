//
//  Height.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func height(_ set: CGFloat,
                relation: ConstraintRelation = .equal,
                priority: UILayoutPriority = .required,
                active: Bool = true) -> UIView {

        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        self.frame.size.height = set
        
        switch relation {
        case .equal:
            x = self.heightAnchor.constraint(equalToConstant: set)
            
        case .greaterThanOrEqual:
            x = self.heightAnchor.constraint(greaterThanOrEqualToConstant: set)
            
        case .lessThanOrEqual:
            x = self.heightAnchor.constraint(lessThanOrEqualToConstant: set)
            
        @unknown default:
            fatalError()
        }
        
        x.isActive = active
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
        
    }
    
}
