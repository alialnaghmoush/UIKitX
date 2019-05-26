//
//  CurveType.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public enum CurveType {
    case Linear,EaseIn,EaseOut,EaseInOut, Pop,
    EaseInSine,EaseOutSine,EaseInOutSine,
    EaseInQuad,EaseOutQuad,EaseInOutQuad,
    EaseInCubic,EaseOutCubic,EaseInOutCubic,
    EaseInQuart,EaseOutQuart,EaseInOutQuart,
    EaseInQuint,EaseOutQuint,EaseInOutQuint,
    EaseInExpo,EaseOutExpo,EaseInOutExpo,
    EaseInCirc,EaseOutCirc,EaseInOutCirc,
    EaseInBack,EaseOutBack,EaseInOutBack
}

extension UIView {
    
    public func timingFunction(_ curve: CurveType) -> [CGPoint] {
        
        switch curve {
        case .Linear:
            return [CGPoint(x: 0, y: 0),CGPoint(x: 1, y: 1)]
        case .EaseIn:
            return [CGPoint(x: 0.55, y: 0.05),CGPoint(x: 0.67, y: 0.19)]
        case .EaseOut:
            return [CGPoint(x: 0.22, y: 0.61),CGPoint(x: 0.35, y: 1)]
        case .EaseInOut:
            return [CGPoint(x: 0.64, y: 0.04),CGPoint(x: 0.35, y: 1)]
        case .Pop:
            return [CGPoint(x: 0.23, y: 1.25),CGPoint(x: 0.46, y: 1.0)]
        case .EaseInSine:
            return [CGPoint(x: 0.47, y: 0),CGPoint(x: 0.745, y: 0.715)]
        case .EaseOutSine:
            return [CGPoint(x: 0.39, y: 0.575),CGPoint(x: 0.565, y: 1)]
        case .EaseInOutSine:
            return [CGPoint(x: 0.445, y: 0.05),CGPoint(x: 0.55, y: 0.95)]
        case .EaseInQuad:
            return [CGPoint(x: 0.55, y: 0.085),CGPoint(x: 0.68, y: 0.53)]
        case .EaseOutQuad:
            return [CGPoint(x: 0.25, y: 0.46),CGPoint(x: 0.45, y: 0.94)]
        case .EaseInOutQuad:
            return [CGPoint(x: 0.455, y: 0.03),CGPoint(x: 0.515, y: 0.955)]
        case .EaseInCubic:
            return [CGPoint(x: 0.55, y: 0.055),CGPoint(x: 0.675, y: 0.19)]
        case .EaseOutCubic:
            return [CGPoint(x: 0.215, y: 0.61),CGPoint(x: 0.355, y: 1)]
        case .EaseInOutCubic:
            return [CGPoint(x: 0.645, y: 0.045),CGPoint(x: 0.355, y: 1)]
        case .EaseInQuart:
            return [CGPoint(x: 0.895, y: 0.03),CGPoint(x: 0.685, y: 0.22)]
        case .EaseOutQuart:
            return [CGPoint(x: 0.165, y: 0.84),CGPoint(x: 0.44, y: 1)]
        case .EaseInOutQuart:
            return [CGPoint(x: 0.77, y: 0),CGPoint(x: 0.175, y: 1)]
        case .EaseInQuint:
            return [CGPoint(x: 0.755, y: 0.05),CGPoint(x: 0.855, y: 0.06)]
        case .EaseOutQuint:
            return [CGPoint(x: 0.23, y: 1),CGPoint(x: 0.32, y: 1)]
        case .EaseInOutQuint:
            return [CGPoint(x: 0.86, y: 0),CGPoint(x: 0.07, y: 1)]
        case .EaseInExpo:
            return [CGPoint(x: 0.95, y: 0.05),CGPoint(x: 0.795, y: 0.035)]
        case .EaseOutExpo:
            return [CGPoint(x: 0.19, y: 1),CGPoint(x: 0.22, y: 1)]
        case .EaseInOutExpo:
            return [CGPoint(x: 1, y: 0),CGPoint(x: 0, y: 1)]
        case .EaseInCirc:
            return [CGPoint(x: 0.6, y: 0.04),CGPoint(x: 0.98, y: 0.335)]
        case .EaseOutCirc:
            return [CGPoint(x: 0.075, y: 0.82),CGPoint(x: 0.165, y: 1)]
        case .EaseInOutCirc:
            return [CGPoint(x: 0.785, y: 0.135),CGPoint(x: 0.15, y: 0.86)]
        case .EaseInBack:
            return [CGPoint(x: 0.6, y: -0.28),CGPoint(x: 0.735, y: 0.045)]
        case .EaseOutBack:
            return [CGPoint(x: 0.175, y: 0.885),CGPoint(x: 0.32, y: 1.275)]
        case .EaseInOutBack:
            return [CGPoint(x: 0.68, y: -0.55),CGPoint(x: 0.265, y: 1.55)]
        }
    }
    
}
