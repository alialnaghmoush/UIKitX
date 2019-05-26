//
//  CornerMask.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension CACornerMask {
    
    static public var topRight: CACornerMask {
        return CACornerMask.layerMaxXMinYCorner
    }
    
    static public var topLeft: CACornerMask {
        return CACornerMask.layerMinXMinYCorner
    }
    
    static public var bottomRight: CACornerMask {
        return CACornerMask.layerMaxXMaxYCorner
    }
    
    static public var bottomLeft: CACornerMask {
        return CACornerMask.layerMinXMaxYCorner
    }
}
