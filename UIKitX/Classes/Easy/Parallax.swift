//
//  Parallax.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 07/06/2019.
//

import UIKit

public enum ParallaxStrength {
    case ExtraLow
    case Low
    case Mid
    case High
    case ExtraHigh
}

public enum MotionDirection {
    case MotionX
    case MotionY
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Custom parallax
    
    /// Create custom parallax
    /// - Parameter min: Set the minimum value in when the element moves.
    /// - Parameter max: Set the maximum value in when the element moves.
    public func parallax(min: CGFloat, max: CGFloat) -> UIView {
        
        removePreviousMotionEffects()
        
        let motionEffectGroup = UIMotionEffectGroup()
        let xMotion = createMotionEffect(motionDirection: .MotionX, minValue: min, maxValue: max)
        let yMotion = createMotionEffect(motionDirection: .MotionY, minValue: min, maxValue: max)
        motionEffectGroup.motionEffects = [yMotion, xMotion]
        self.addMotionEffect(motionEffectGroup)
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Select Parallax
    
    /// Select strength parallax
    /// - Parameter strength: Select the strength of element's motion (ExtraLow, Low, Mid, High or ExtraHigh).
    public func parallax(_ strength: ParallaxStrength = .Mid) {
        
        removePreviousMotionEffects()
        
        var minValue: CGFloat = 0
        
        switch strength {
        case .ExtraLow:
            minValue = CGFloat(-5.0)
        case .Low:
            minValue = CGFloat(-15.0)
        case .Mid:
            minValue = CGFloat(-35.0)
        case .High:
            minValue = CGFloat(-55.0)
        case .ExtraHigh:
            minValue = CGFloat(-80.0)
        }
        
        let maxValue = -minValue
        let motionEffectGroup = UIMotionEffectGroup()
        let xMotion = createMotionEffect(motionDirection: .MotionX, minValue: minValue, maxValue: maxValue)
        let yMotion = createMotionEffect(motionDirection: .MotionY, minValue: minValue, maxValue: maxValue)
        motionEffectGroup.motionEffects = [yMotion, xMotion]
        self.addMotionEffect(motionEffectGroup)
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Create Motion Effect
    
    /// Create Motion Effect
    /// - Parameter motionDirection: Select Direction ( MotionX or MotionY ).
    /// - Parameter minValue: Set the minimum value for motion effect
    /// - Parameter maxValue: Set the maximum value for motion effect
    fileprivate func createMotionEffect (motionDirection: MotionDirection, minValue: CGFloat, maxValue: CGFloat) -> UIMotionEffect {
        if motionDirection == .MotionX {
            let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
            xMotion.minimumRelativeValue = minValue
            xMotion.maximumRelativeValue = maxValue
            
            return xMotion
        } else {
            let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
            yMotion.minimumRelativeValue = minValue
            yMotion.maximumRelativeValue = maxValue
            
            return yMotion
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Remove Motion Effect
    
    /// Remove Motion Effect
    fileprivate func removePreviousMotionEffects() {
        self.motionEffects.removeAll()
    }

}
