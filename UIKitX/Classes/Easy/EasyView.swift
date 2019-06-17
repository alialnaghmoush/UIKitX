//
//  EasyView.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Border Layer
    @discardableResult
    public func border(width: CGFloat, color: UIColor) -> UIView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ set: CGFloat) -> UIView {
        layer.borderWidth = set
        return self
    }
    
    @discardableResult
    public func borderColor(_ set: UIColor) -> UIView {
        layer.borderColor = set.cgColor
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Border Layer with more then views
    
    @discardableResult
    public func border(width: CGFloat, color: UIColor, views: UIView...) -> UIView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        views.forEach { (view) in
            view.layer.borderWidth = width
            view.layer.borderColor = color.cgColor
        }
        return self
    }
    
    @discardableResult
    public func borderWidth(_ set: CGFloat, views: UIView...) -> UIView {
        layer.borderWidth = set
        views.forEach { (view) in
            view.layer.borderWidth = set
        }
        return self
    }
    
    @discardableResult
    public func borderColor(_ set: UIColor, views: UIView...) -> UIView {
        layer.borderColor = set.cgColor
        views.forEach { (view) in
            view.layer.borderColor = set.cgColor
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Corners Layer
    @discardableResult
    public func cornerEdges(_ set: CGFloat) -> UIView {
        layer.cornerRadius = set
        return self
    }
    
    @discardableResult
    public func cornerEdges(_ active: Bool = true) -> UIView {
        if active { layer.cornerRadius = frame.height / 2.0 }
        return self
    }
    
    @discardableResult
    public func maskedCorners(_ set: CACornerMask) -> UIView{
        layer.maskedCorners = [set]
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Corners Layer with more then views
    
    @discardableResult
    public func cornerEdges(_ set: CGFloat, views: UIView...) -> UIView {
        layer.cornerRadius = set
        views.forEach { (view) in
            view.layer.cornerRadius = set
        }
        return self
    }
    
    @discardableResult
    public func cornerEdges(_ active: Bool = true, views: UIView...) -> UIView {
        layer.cornerRadius = frame.height / 2.0
        views.forEach { (view) in
            if active { view.layer.cornerRadius = frame.height / 2.0 }
        }
        return self
    }
    
    @discardableResult
    public func maskedCorners(_ set: CACornerMask, views: UIView...) -> UIView{
        layer.maskedCorners = [set]
        views.forEach { (view) in
            view.layer.maskedCorners = [set]
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Mask Layer
    
    @discardableResult
    public func maskView(_ active: Bool = true) -> UIView {
        layer.masksToBounds = active
        return self
    }
    
    @discardableResult
    public func clipView(_ active: Bool = true) -> UIView {
        clipsToBounds = active
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Mask Layer with more then views
    
    @discardableResult
    public func maskView(_ active: Bool = true, views: UIView...) -> UIView {
        layer.masksToBounds = active
        views.forEach { (view) in
            view.layer.masksToBounds = active
        }
        return self
    }
    
    @discardableResult
    public func clipView(_ active: Bool = true, views: UIView...) -> UIView {
        clipsToBounds = active
        views.forEach { (view) in
            view.clipsToBounds = active
        }
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Background Color for View
    @discardableResult
    public func backColor(_ set: UIColor) -> UIView {
        backgroundColor = set
        return self
    }
    
    @discardableResult
    public func backColor(_ set: UIColor, views: UIView...) -> UIView {
        backgroundColor = set
        views.forEach { (view) in
            view.backgroundColor = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - add Subviews
    @discardableResult
    public func addSubviews(_ views: UIView...) -> UIView {
        views.forEach { (view) in
            addSubview(view)
        }
        return self
    }
    
}
