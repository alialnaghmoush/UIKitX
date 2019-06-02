//
//  Anchorable.swift
//  Pods
//
//  Created by Ali AlNaghmoush on 31/05/2019.
//

import UIKit

public protocol Anchorable {
    
    var topAnchor: NSLayoutYAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var leftAnchor: NSLayoutXAxisAnchor { get }
    var rightAnchor: NSLayoutXAxisAnchor { get }
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
    
    var centerXAnchor: NSLayoutXAxisAnchor { get }
    var centerYAnchor: NSLayoutYAxisAnchor { get }
    
    var widthAnchor: NSLayoutDimension { get }
    var heightAnchor: NSLayoutDimension { get }
    
    @discardableResult
    func prepareForLayout() -> Self
    
}

extension UIView: Anchorable {
    
    @discardableResult
    public func prepareForLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        layoutIfNeeded()
        return self
    }
}

extension UILayoutGuide: Anchorable {
    @discardableResult
    public func prepareForLayout() -> Self { return self }
}
