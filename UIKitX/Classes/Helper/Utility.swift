//
//  Utility.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    public func safeView(_ with: UIView?) -> UIView {
        guard let v = with else { fatalError() }
        return v
    }
    
    public var safeSuperview: UIView {
        return safeView(superview)
    }
    
    public var safeArea: UILayoutGuide {
        return safeAreaLayoutGuide
    }
    
    @discardableResult
    public func prepareLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        layoutIfNeeded()
        return self
    }
    
}

extension String {
    
    public var isNotEmpty: Bool { return !isEmpty }
    
    mutating public func removeHashIfNecessary() {
        if hasPrefix("#") {
            self = replacingOccurrences(of: "#", with: "")
        }
    }
}
