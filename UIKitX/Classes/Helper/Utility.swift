//
//  Utility.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    public func safeSuperview(for superview: UIView?) -> UIView {
        guard let superview = superview else {
            fatalError("Unable to create this constraint to it's superview, because it has no superview.")
        }
        return superview
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


extension UIView {
    
    public func safeAnchorable(for superview: UIView?, usingSafeArea: Bool = false) -> Anchorable {
        guard let superview = superview else {
            fatalError("Unable to create this constraint to it's superview, because it has no superview.")
        }
        
        prepareForLayout()
        
        if #available(iOS 11, tvOS 11, *){
            if usingSafeArea {
                return superview.safeAreaLayoutGuide
            }
        }
        
        return superview
    }    
}
