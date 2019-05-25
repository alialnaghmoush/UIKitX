//
//  AnimatFade.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public extension UIView {
    
    /**
     Fade in a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult func fadeIn(from: CGFloat = 0.0, to: CGFloat = 1.0 ,duration: TimeInterval = 1, delay: TimeInterval = 0.0, curve: CurveType = .EaseInOut) -> UIView {
        
        self.alpha = from
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration - delay,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.alpha = to
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
    /**
     Fade out a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult func fadeOut(from: CGFloat = 1.0, to: CGFloat = 0.0 ,duration: TimeInterval = 1, delay: TimeInterval = 0.0, curve: CurveType = .EaseInOut) -> UIView {
        
        self.alpha = from
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.alpha = to
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
}
