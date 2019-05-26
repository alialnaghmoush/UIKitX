//
//  Gradient.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    @discardableResult
    public func gradient(color: [CGColor], start: PositionPoint = .left, end: PositionPoint = .right,
                         locations: [NSNumber] = [0.0, 1.0], layerAt: UInt32 = 0) -> UIView {
        
        let gLayer = CAGradientLayer()
        
        gLayer.frame = bounds
        gLayer.colors = color
        gLayer.locations = locations
        gLayer.startPoint = setPoint(start)
        gLayer.endPoint = setPoint(end)
        
        layer.insertSublayer(gLayer, at: layerAt)
        
        return self
    }
    
}
