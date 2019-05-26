//
//  AnimatRotat.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public extension UIView {
    
    /**
     Move Up a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    
    @discardableResult func rotat(from: CGFloat = 0.0, to: CGFloat ,duration: TimeInterval = 1, delay: TimeInterval = 0.0, curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(rotationAngle: from * .pi / 180)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration - delay,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(rotationAngle: to * .pi / 180)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
}
