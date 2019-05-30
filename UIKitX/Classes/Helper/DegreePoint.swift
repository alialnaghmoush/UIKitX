//
//  DegreePoint.swift
//  Pods
//
//  Created by Ali AlNaghmoush on 29/05/2019.
//

import UIKit

public enum DegreePoint {
    
    case degree(CGFloat)
    
    public var startPoint: CGPoint {
        switch self {
        case .degree(let degree):
            let radian = degree * .pi / 180
            return CGPoint(x: 0.5 * (cos(radian) + 1), y: 0.5 * (1 - sin(radian)))
        }
    }
    
    public var endPoint: CGPoint {
        switch self {
        case .degree(let degree):
            let radian = degree * .pi / 180
            return CGPoint(x: 0.5 * (cos(radian + .pi) + 1), y: 0.5 * (1 + sin(radian)))
        }
    }
}
