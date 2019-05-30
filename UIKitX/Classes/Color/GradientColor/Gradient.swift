//
//  Gradient.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit


extension UIView {
    
    @discardableResult
    public func gradient(colors: [UIColor],
                         start: AxesPoint = .left,
                         end: AxesPoint = .right,
                         locations: [NSNumber]? = nil,
                         corner: CGFloat = 0,
                         style: CAGradientLayerType = .axial,
                         layerAt: UInt32 = 0) -> UIView {
        
        let gLayer = CAGradientLayer()
        
        gLayer.frame = bounds
        gLayer.startPoint = CGPoint(x: 0.0, y: 0.5)//start.point
        gLayer.endPoint = CGPoint(x: 1.0, y: 0.5)//end.point
        gLayer.colors = colors.map({ $0.cgColor })
        gLayer.cornerRadius(corner)
        gLayer.type = style
        
        if locations != nil { gLayer.locations = locations }
        
        gLayer.layoutIfNeeded()

        layer.insertSublayer(gLayer, at: layerAt)
        
        return self
    }
    
}


extension UIView {
    
    @discardableResult
    public func gradient(colors: [UIColor],
                         degree: DegreePoint,
                         locations: [NSNumber]? = nil,
                         corner: CGFloat = 0,
                         style: CAGradientLayerType = .axial,
                         layerAt: UInt32 = 0) -> UIView {
        
        let gLayer = CAGradientLayer()
        
        gLayer.frame = bounds
        gLayer.startPoint = degree.startPoint
        gLayer.endPoint = degree.endPoint
        gLayer.colors = colors.map({ $0.cgColor })
        gLayer.cornerRadius(corner)
        gLayer.type = style
        
        if locations != nil { gLayer.locations = locations }
        
        layer.insertSublayer(gLayer, at: layerAt)
        
        return self
    }
    
}
