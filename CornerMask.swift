//
//  CornerMask.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public extension CACornerMask {
    
    static var topRight: CACornerMask {
        return CACornerMask.layerMaxXMinYCorner
    }
    
    static var topLeft: CACornerMask {
        return CACornerMask.layerMinXMinYCorner
    }
    
    static var bottomRight: CACornerMask {
        return CACornerMask.layerMaxXMaxYCorner
    }
    
    static var bottomLeft: CACornerMask {
        return CACornerMask.layerMinXMaxYCorner
    }
}
