//
//  Gradient.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit


extension UIView {
    
    @discardableResult
    public func gradient( colors: [UIColor],
                          start: AxesPoint = .bottomLeft,
                          end: AxesPoint = .topRight,
                          locations: [NSNumber]? = nil,
                          corner: CGFloat = 0,
                          style: CAGradientLayerType = .axial,
                          layerAt: UInt32 = 0) -> UIView {
        
        let gLayer = CAGradientLayer()
        
        gLayer.frame = bounds
        gLayer.startPoint = start.point
        gLayer.endPoint = end.point
        gLayer.colors = colors.map({ $0.cgColor })
        gLayer.cornerRadius(corner)
        gLayer.type = style
        
        if locations != nil { gLayer.locations = locations }
        
        layer.insertSublayer(gLayer, at: layerAt)
        
        return self
    }
    
}
