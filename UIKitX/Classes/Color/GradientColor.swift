//
//  GradientColor.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Enum

public enum Points {
    
    case topLeft
    case topCenter
    case topRight

    case bottomLeft
    case bottomCenter
    case bottomRight

    case left
    case center
    case right
    
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Extension UIVeiw

extension UIView {
    
    @discardableResult
    public func gradient(colors: [CGColor], locations: [NSNumber],
                         start: Points, end: Points, corner: CGFloat = 0,
                         moveX: Double = 0.0, moveY: Double = 0.0, layerAt: UInt32 = 0) -> UIView {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = bounds
        gradientLayer.colors = colors
        gradientLayer.locations = locations
        gradientLayer.startPoint = setPoint(start, X: moveX, Y: moveY)
        gradientLayer.endPoint = setPoint(end, X: moveX, Y: moveY)
        gradientLayer.cornerRadius(corner)
        
        layer.insertSublayer(gradientLayer, at: layerAt)
        
        return self
    }
    
    public func setPoint(_ Point: Points, X: Double = 0.0, Y: Double = 0.0) -> CGPoint {
        
        switch Point {
        case .topLeft:
            return CGPoint(x: 0.0 + X, y: 0.0 + Y)
        case .topCenter:
            return CGPoint(x: 0.5 + X, y: 0.0 + Y)
        case .topRight:
            return CGPoint(x: 1.0 + X, y: 0.0 + Y)
        case .bottomLeft:
            return CGPoint(x: 0.0 + X, y: 1.0 + Y)
        case .bottomCenter:
            return CGPoint(x: 0.5 + X, y: 1.0 + Y)
        case .bottomRight:
            return CGPoint(x: 1.0 + X, y: 1.0 + Y)
        case .left:
            return CGPoint(x: 0.0 + X, y: 0.5 + Y)
        case .center:
            return CGPoint(x: 0.5 + X, y: 0.5 + Y)
        case .right:
            return CGPoint(x: 1.0 + X, y: 0.5 + Y)
        }
    }
}

