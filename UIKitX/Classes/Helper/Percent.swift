//
//  Percent.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/06/2019.
//

extension CGFloat {
    
    public func percent(min: CGFloat, max: CGFloat) -> CGFloat {
        return (max - min) / min * 100.0
    }
    
    public func percent(_ value: CGFloat, increase: CGFloat) -> CGFloat {
        return value * (( 100 - increase ) / 100)
    }
    
}
