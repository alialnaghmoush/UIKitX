//
//  FillBottom.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public extension UIView {
    
    @discardableResult
    func fillBottom(_ to:       UIView,
                    spacLeft:   CGFloat,
                    spacRight:  CGFloat,
                    spacBottom: CGFloat,
                    safeArea:   Bool = false,
                    relation:   ConstraintRelation = .equal,
                    priority:   UILayoutPriority = .required,
                    active:     Bool = true) -> UIView {
        
        left(to, spacing: spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(to, spacing: spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(to, spacing: spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillBottom(_ to:     UIView,
                    spaces:   CGFloat = 0,
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active:   Bool = true) -> UIView {
        
        fillBottom(to, spacLeft: spaces, spacRight: spaces, spacBottom: spaces,
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillBottom(_ to:     UIView,
                    spaces:   [CGFloat],
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active:   Bool = true) -> UIView {
        
        fillBottom(to, spacLeft: spaces[0], spacRight: spaces[1], spacBottom: spaces[2],
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - With SafeArea
    
    @discardableResult
    func fillBottom(spacLeft:   CGFloat,
                    spacRight:  CGFloat ,
                    spacBottom: CGFloat,
                    safeArea:   Bool,
                    relation:   ConstraintRelation = .equal,
                    priority:   UILayoutPriority = .required,
                    active:     Bool = true) -> UIView {
        
        left(spacLeft, safeArea: safeArea, relation: relation, priority: priority, active: active)
        right(spacRight, safeArea: safeArea, relation: relation, priority: priority, active: active)
        bottom(spacBottom, safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillBottom(_ spaces:  CGFloat = 0,
                    safeArea:  Bool = false,
                    relation:  ConstraintRelation = .equal,
                    priority:  UILayoutPriority = .required,
                    active:    Bool = true) -> UIView {
        
        fillBottom(spacLeft: spaces, spacRight: spaces, spacBottom: spaces,
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
    
    @discardableResult
    func fillBottom(_ spaces: [CGFloat],
                    safeArea: Bool = false,
                    relation: ConstraintRelation = .equal,
                    priority: UILayoutPriority = .required,
                    active:   Bool = true) -> UIView {
        
        fillBottom(spacLeft: spaces[0], spacRight: spaces[1], spacBottom: spaces[2],
                   safeArea: safeArea, relation: relation, priority: priority, active: active)
        
        return self
    }
}
