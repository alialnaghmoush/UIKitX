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
    
    static public var top: CACornerMask {
        return [CACornerMask.layerMinXMinYCorner, CACornerMask.layerMaxXMinYCorner]
    }
    
    static public var left: CACornerMask {
        return [CACornerMask.layerMaxXMinYCorner,CACornerMask.layerMinXMaxYCorner]
    }
    
    static public var right: CACornerMask {
        return [CACornerMask.layerMaxXMinYCorner, CACornerMask.layerMaxXMaxYCorner]
    }
    
    static public var bottom: CACornerMask {
        return [CACornerMask.layerMinXMaxYCorner,CACornerMask.layerMaxXMaxYCorner]
    }
}
