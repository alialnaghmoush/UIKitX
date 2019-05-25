//
//  SuccessShape.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

class SuccessShape: UIView {
    
    public var iconColor: UIColor = Shapes.strokeColor
    
    override func draw(_ rect: CGRect) {
        Shapes.drawSuccess(frame: bounds, color: iconColor, resizing: .aspectFit)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        
    }
    
    public convenience init(color: UIColor) {
        self.init(frame: .zero)
        iconColor = color
    }
    
}

extension Shapes {
    
    @objc dynamic public class func drawSuccess(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 22, height: 22), color: UIColor = strokeColor, resizing: ResizingBehavior = .aspectFit) {
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 22, height: 22), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 22, y: resizedFrame.height / 22)
        
        
        //// Color Declarations
        let strokeColor = color
        
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 1, y: 1, width: 20, height: 20))
        strokeColor.setStroke()
        ovalPath.lineWidth = strokeWith
        ovalPath.stroke()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 5.71, y: 11.37))
        bezierPath.addLine(to: CGPoint(x: 9.53, y: 14.49))
        strokeColor.setStroke()
        bezierPath.lineWidth = strokeWith
        bezierPath.miterLimit = 10
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.stroke()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 9.61, y: 14.49))
        bezier2Path.addLine(to: CGPoint(x: 15.87, y: 7.51))
        strokeColor.setStroke()
        bezier2Path.lineWidth = strokeWith
        bezier2Path.miterLimit = 10
        bezier2Path.lineCapStyle = .round
        bezier2Path.lineJoinStyle = .round
        bezier2Path.stroke()
        
        context.restoreGState()
        
    }
    
}

