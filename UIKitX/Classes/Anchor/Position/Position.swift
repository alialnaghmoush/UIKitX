//
//  Position.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 02/06/2019.
//

import UIKit


extension UIView {
    
//    @discardableResult
//    public func position(_ to: UIView,
//                         spacing: CGFloat = 0,
//                         safeArea: Bool = false,
//                         relation: ConstraintRelation = .equal,
//                         priority: UILayoutPriority = .required,
//                         active: Bool = true) -> UIView {
//        
//        if let sv = superview {
//            self.translatesAutoresizingMaskIntoConstraints = false
//            let c = NSLayoutConstraint(item: self, attribute: position, relatedBy: relatedBy,
//                                       toItem: sv, attribute: position, multiplier: 1,
//                                       constant: points)
//            
//            sv.addConstraint(c)
//            sv.layoutIfNeeded()
//        }
//        return self
//    }
    
    public func position(_ position: NSLayoutConstraint.Attribute,
                              relatedBy: NSLayoutConstraint.Relation = .equal,
                              points: CGFloat) -> UIView {
        
        if let sv = superview {
            self.translatesAutoresizingMaskIntoConstraints = false
            let c = NSLayoutConstraint(item: self, attribute: position, relatedBy: relatedBy,
                                       toItem: sv, attribute: position, multiplier: 1,
                                       constant: points)
            
            sv.addConstraint(c)
            sv.layoutIfNeeded()
        }
        return self
    }
    
    @discardableResult
    public func cTop(_ points: CGFloat) -> UIView {
        return position(.topMargin, points: points)
    }
    
    @discardableResult
    public func cBottom(_ points: CGFloat) -> UIView {
        return position(.bottom, points: -points)
    }
    
    @discardableResult
    public func cRight(_ points: CGFloat) -> UIView {
        return position(.right, points: -points)
    }
    
    @discardableResult
    public func cLeft(_ points: CGFloat) -> UIView {
        return position(.left, points: points)
    }
    
    
    //-------------------------------------------------------------
    public func size(_ attribute: NSLayoutConstraint.Attribute,
                          relatedBy: NSLayoutConstraint.Relation = .equal,
                          points: CGFloat) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        let c = NSLayoutConstraint(item: self, attribute: attribute, relatedBy: relatedBy,
                                   toItem: nil, attribute: .notAnAttribute, multiplier: 1,
                                   constant: points)
        
        if let sv = superview {
            sv.addConstraint(c)
            sv.layoutIfNeeded()
        } else {
            addConstraint(c)
            layoutIfNeeded()
        }
        return self
    }
    
    @discardableResult
    public func cHeight(_ points: CGFloat) -> UIView {
        return size(.height, points: points)
    }
    
    @discardableResult
    public func cWidth(_ points: CGFloat) -> UIView {
        return size(.width, points: points)
    }
}
