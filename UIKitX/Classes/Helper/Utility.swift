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
}

extension String {
    
    public var isNotEmpty: Bool { return !isEmpty }
    
    mutating public func removeHashIfNecessary() {
        if hasPrefix("#") {
            self = replacingOccurrences(of: "#", with: "")
        }
    }
}
