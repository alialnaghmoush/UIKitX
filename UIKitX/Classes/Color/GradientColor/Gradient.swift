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
                         roundEdges: Bool = false,
                         style: CAGradientLayerType = .axial,
                         layerAt: UInt32 = 0) -> UIView {
        
        let gLayer = CAGradientLayer()
        
        gLayer.frame = bounds
        gLayer.startPoint = start.point
        gLayer.endPoint = end.point
        gLayer.colors = colors.map({ $0.cgColor })
        gLayer.type = style
        
        if roundEdges == true { gLayer.roundEdges(roundEdges) } else { gLayer.cornerRadius(corner) }
        if locations != nil { gLayer.locations = locations }
        
        gLayer.layoutIfNeeded()

        layer.insertSublayer(gLayer, at: layerAt)
        
        return self
    }
}
