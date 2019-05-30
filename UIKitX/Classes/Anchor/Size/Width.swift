//
//  Width.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func width(_ set: CGFloat,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               active: Bool = true) -> UIView {

        self.translatesAutoresizingMaskIntoConstraints = false
        var x =  NSLayoutConstraint()
        self.frame.size.width = set

        
        switch relation {
        case .equal:
            x = self.widthAnchor.constraint(equalToConstant: set)
            
        case .greaterThanOrEqual:
            x = self.widthAnchor.constraint(greaterThanOrEqualToConstant: set)
            
        case .lessThanOrEqual:
            x = self.widthAnchor.constraint(lessThanOrEqualToConstant: set)
            
        @unknown default:
            fatalError()
        }
        
        x.isActive = active
        x.priority = priority
        
        self.layoutIfNeeded()
        
        return self
        
    }
    
}
