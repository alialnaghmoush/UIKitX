//
//  UIGradient.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 10/06/2019.
//

import UIKit

public class UIGradient: UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    
    private var gradientView = CAGradientLayer()
    
    public var colors: [UIColor] = [#colorLiteral(red: 0.7725490196, green: 0.8156862745, blue: 0.8862745098, alpha: 1),#colorLiteral(red: 0.9568627451, green: 0.9647058824, blue: 0.9764705882, alpha: 1)]
    public var start: AxesPoint = .topRight
    public var end: AxesPoint = .bottomLeft
    public var locations: [NSNumber]? = nil
    public var cornerEdges: CGFloat = 0
    public var roundEdges: Bool = false
    public var style: CAGradientLayerType = .axial
    public var layerAt: UInt32 = 0
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Initializers
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
//    public init() {
//        super.init(frame: UIScreen.main.bounds)
//    }
    
    public init(colors: [UIColor],
                start: AxesPoint = .topRight,
                end: AxesPoint = .bottomLeft,
                locations: [NSNumber]? = nil,
                cornerEdges: CGFloat = 0,
                roundEdges: Bool = false,
                style: CAGradientLayerType = .axial,
                layerAt: UInt32 = 0) {
        
        self.colors = colors
        self.start = start
        self.end = end
        self.locations = locations
        self.cornerEdges = cornerEdges
        self.roundEdges = roundEdges
        self.style = style
        self.layerAt = layerAt
        
        super.init(frame: UIScreen.main.bounds)
        gradientView.startPoint = start.point
        gradientView.endPoint = end.point
        gradientView.colors = colors.map({ $0.cgColor })
        gradientView.type = style
        
        if roundEdges == true { gradientView.cornerEdges(roundEdges) } else { gradientView.cornerEdges(cornerEdges) }
        if locations != nil { gradientView.locations = locations }
        
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        gradientView.frame = bounds
    }
    
    open override func draw(_ rect: CGRect) {
        super.draw(rect)
        config()
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Configuration
    
    private func config() {
        layer.addSublayer(gradientView)
        setupGradientLayer()
    }
    
    private func setupGradientLayer() {
        
        gradientView.frame      = bounds
        gradientView.startPoint = self.start.point
        gradientView.endPoint   = self.end.point
        gradientView.colors     = self.colors.map({ $0.cgColor })
        gradientView.type       = self.style
        
        if roundEdges == true { gradientView.cornerEdges(self.roundEdges) }
        else { gradientView.cornerEdges(self.cornerEdges) }
        
        if locations != nil { gradientView.locations = self.locations }
        
    }
    
}
