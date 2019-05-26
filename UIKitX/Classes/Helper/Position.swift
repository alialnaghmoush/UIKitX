//
//  Position.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public enum Position {
    case top, left, right, bottom
}

public enum PositionPoint {
    case left,center,right
    case topLeft,topCenter, topRight
    case bottomLeft, bottomCenter, bottomRight
}


extension UIView {
    
    public func setPoint(_ Point: PositionPoint) -> CGPoint {
        
        switch Point {
        case .left:
            return CGPoint(x: 0.0, y: 0.5)
        case .center:
            return CGPoint(x: 0.5, y: 0.5)
        case .right:
            return CGPoint(x: 1.0, y: 0.5)
        case .topLeft:
            return CGPoint(x: 0.0, y: 0.0)
        case .topCenter:
            return CGPoint(x: 0.5, y: 0.0)
        case .topRight:
            return CGPoint(x: 1.0, y: 0.0)
        case .bottomLeft:
            return CGPoint(x: 0.0, y: 1.0)
        case .bottomCenter:
            return CGPoint(x: 0.5, y: 1.0)
        case .bottomRight:
            return CGPoint(x: 1.0, y: 1.0)
            
        }
    }
    
}
