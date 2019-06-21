//
//  EasyView.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
// EasyImage

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
    public func border(width: CGFloat, color: UIColor, with: UIView...) -> UIView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        with.forEach { (x) in
            x.layer.borderWidth = width
            x.layer.borderColor = color.cgColor
        }
        return self
    }
    
    @discardableResult
    public func borderWidth(_ set: CGFloat, with: UIView...) -> UIView {
        layer.borderWidth = set
        with.forEach { (x) in
            x.layer.borderWidth = set
        }
        return self
    }
    
    @discardableResult
    public func borderColor(_ set: UIColor, with: UIView...) -> UIView {
        layer.borderColor = set.cgColor
        with.forEach { (x) in
            x.layer.borderColor = set.cgColor
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
        if active { layer.cornerRadius = bounds.height / 2.0 }
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
        views.forEach { (x) in
            x.layer.cornerRadius = set
        }
        return self
    }
    
    @discardableResult
    public func cornerEdges(_ active: Bool = true, with: UIView...) -> UIView {
        layer.cornerRadius = frame.height / 2.0
        with.forEach { (x) in
            if active { x.layer.cornerRadius = frame.height / 2.0 }
        }
        return self
    }
    
    @discardableResult
    public func maskedCorners(_ set: CACornerMask, with: UIView...) -> UIView{
        layer.maskedCorners = [set]
        with.forEach { (x) in
            x.layer.maskedCorners = [set]
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
    public func maskView(_ active: Bool = true, with: UIView...) -> UIView {
        layer.masksToBounds = active
        with.forEach { (x) in
            x.layer.masksToBounds = active
        }
        return self
    }
    
    @discardableResult
    public func clipView(_ active: Bool = true, with: UIView...) -> UIView {
        clipsToBounds = active
        with.forEach { (x) in
            x.clipsToBounds = active
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
    public func backColor(_ set: UIColor, with: UIView...) -> UIView {
        backgroundColor = set
        with.forEach { (x) in
            x.backgroundColor = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Tint Color for View
    @discardableResult
    public func tintColor(_ set: UIColor) -> UIView {
        tintColor = set
        return self
    }
    
    @discardableResult
    public func tintColor(_ set: UIColor, with: UIView...) -> UIView {
        tintColor = set
        with.forEach { (x) in
            x.tintColor = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Content Mode
    @discardableResult
    public func contentMode(_ set: ContentMode) -> UIView {
        contentMode = set
        return self
    }
    
    @discardableResult
    public func contentMode(_ set: ContentMode, with: UIView...) -> UIView {
        contentMode = set
        with.forEach { (x) in
            x.contentMode = set
        }
        return self
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Opacity
    @discardableResult
    public func opacity(_ set: CGFloat) -> UIView {
        alpha = set
        return self
    }
    
    @discardableResult
    public func opacity(_ set: CGFloat, with: UIView...) -> UIView {
        alpha = set
        with.forEach { (x) in
            x.alpha = set
        }
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - add Subviews
    @discardableResult
    public func addSubviews(_ with: UIView...) -> UIView {
        with.forEach { (x) in
            addSubview(x)
        }
        return self
    }
    
}
