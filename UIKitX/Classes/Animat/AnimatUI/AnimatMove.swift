//
//  AnimatMove.swift
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
    @discardableResult func moveUp(fromX: CGFloat = 0, fromY: CGFloat = 20,
                                   toX: CGFloat = 0, toY: CGFloat = 0,
                                   duration: TimeInterval = 1, delay: TimeInterval = 0.0,
                                   curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(translationX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration - delay,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(translationX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
    /**
     Move Down a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult func moveDown(fromX: CGFloat = 0, fromY: CGFloat = -20,
                                     toX: CGFloat = 0, toY: CGFloat = 0,
                                     duration: TimeInterval = 1, delay: TimeInterval = 0.0,
                                     curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(translationX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(translationX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
    /**
     Move Down a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult func moveDownOut(fromX: CGFloat = 0, fromY: CGFloat = 0,
                                        toX: CGFloat = 0, toY: CGFloat = -20,
                                        duration: TimeInterval = 1, delay: TimeInterval = 0.0,
                                        curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(translationX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(translationX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
    /**
     Move Right a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult func moveRight(fromX: CGFloat = 20, fromY: CGFloat = 0,
                                      toX: CGFloat = 0, toY: CGFloat = 0,
                                      duration: TimeInterval = 1, delay: TimeInterval = 0.0,
                                      curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(translationX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(translationX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
    /**
     Move Left a view with a duration and delay
     
     - parameter duration: custom animation duration
     - parameter delay: custom animation delay
     */
    @discardableResult func moveLeft(fromX: CGFloat = -20, fromY: CGFloat = 0,
                                     toX: CGFloat = 0, toY: CGFloat = 0,
                                     duration: TimeInterval = 1, delay: TimeInterval = 0.0,
                                     curve: CurveType = .EaseInOut) -> UIView {
        
        self.transform = CGAffineTransform(translationX: fromX, y: fromY)
        
        let controlPoint = timingFunction(curve)
        
        UIViewPropertyAnimator(duration: duration,
                               controlPoint1: controlPoint[0],
                               controlPoint2: controlPoint[1]) {
                                
                                self.transform = CGAffineTransform(translationX: toX, y: toY)
                                
            }.startAnimation(afterDelay: delay)
        
        return self
    }
    
}
