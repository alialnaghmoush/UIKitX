//
//  Size.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Anchorable {
    
    @discardableResult
    func xSize(setH: CGFloat = 0,
               setW: CGFloat = 0,
               relation: ConstraintRelation = .equal,
               priority: UILayoutPriority = .required,
               isActive: Bool = true) -> Constraints {
        
        prepareForLayout()
        
        let constraints = [
            xHeight(setH, relation: relation, priority: priority, isActive: isActive),
            xWidth(setW, relation: relation, priority: priority, isActive: isActive)
        ]
        
        return constraints
    }
    
}

extension UIView {
    
    @discardableResult
    public func size(_ h: CGFloat,
                     _ w: CGFloat,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        xSize(setH: h, setW: w, relation: relation, priority: priority, isActive: active)
        
        return self
    }
    
    
    @discardableResult
    public func size(_ set: CGFloat,
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        xSize(setH: set, setW: set, relation: relation, priority: priority, isActive: active)

        return self
    }
    
    @discardableResult
    public func size(_ set: [CGFloat],
                     relation: ConstraintRelation = .equal,
                     priority: UILayoutPriority = .required,
                     active: Bool = true) -> UIView {
        
        xSize(setH: set[0], setW: set[1], relation: relation, priority: priority, isActive: active)

        return self
    }
    
}
