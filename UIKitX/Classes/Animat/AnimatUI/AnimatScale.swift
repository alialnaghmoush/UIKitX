//
//  AnimatScale.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension UIView {
    
    /**
     Scale In(XY) a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult public func scaleIn(fromX: CGFloat = 2, fromY: CGFloat = 2, toX: CGFloat = 1, toY: CGFloat = 1, duration: TimeInterval = 1, delay: TimeInterval = 0.0, curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(scaleX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration - delay,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(scaleX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
    
    /**
     Scale Out(XY) a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult public func scaleOut(fromX: CGFloat = 1, fromY: CGFloat = 1,
                                     toX: CGFloat = 0.5, toY: CGFloat = 0.5,
                                     duration: TimeInterval = 1, delay: TimeInterval = 0.0,
                                     curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(scaleX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration - delay,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(scaleX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
}
