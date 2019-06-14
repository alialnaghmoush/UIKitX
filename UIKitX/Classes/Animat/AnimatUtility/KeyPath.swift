//
//  KeyPath.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 08/06/2019.
//

import UIKit

public enum AnimationKeyPath: String {
    case bounds
    case boundsOrigin = "bounds.origin"
    case boundsOriginX = "bounds.origin.x"
    case boundsOriginY = "bounds.origin.y"
    case boundsSize = "bounds.size"
    case boundsSizeWidth = "bounds.size.width"
    case boundsSizeHeight = "bounds.size.height"
    case position
    case positionX = "position.x"
    case positionY = "position.y"
    case zPosition
    case backgroundColor
    case borderColor
    case borderWidth
    case cornerRadius
    case opacity
    case anchorPoint
    case anchorPointX = "anchorPoint.x"
    case anchorPointY = "anchorPoint.y"
    case transform
    case rotate  = "transform.rotation"
    case rotateX = "transform.rotation.x"
    case rotateY = "transform.rotation.y"
    case rotateZ = "transform.rotation.z"
    case scale  = "transform.scale"
    case scaleX = "transform.scale.x"
    case scaleY = "transform.scale.y"
    case scaleZ = "transform.scale.z"
    case translation  = "transform.translation"
    case translationX = "transform.translation.x"
    case translationY = "transform.translation.y"
    case translationZ = "transform.translation.z"
    case colors
    case shadowPath
    case shadowColor
    case shadowOpacity
    case shadowRadius
    case shadowOffset
    case shadowOffsetHeight = "shadowOffset.height"
    case shadowOffsetWidth = "shadowOffset.width"
    case locations
    case path
    case fillColor
    case fillRule
    case strokeColor
    case strokeStart
    case strokeEnd
    case lineWidth
    case miterLimit
    case lineCap
    case lineJoin
    case lineDasePhase
    case lineDashPattern
}

extension CABasicAnimation {
    /**
     A convenience initializer that takes a given AnimationKeyPath.
     - Parameter keyName: An AnimationKeyPath.
     */
    public convenience init(keyName: AnimationKeyPath) {
        self.init(keyPath: keyName.rawValue)
    }
    
    public func setKeyName(_ Key: AnimationKeyPath) -> String {
        return "\(Key)"
    }
    
}
