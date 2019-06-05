//
//  Shadow.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public enum Elevation {
    
    case none
    case top1, top2, top3, top4, top5
    case down1, down2, down3, down4, down5
    case left1, left2, left3, left4, left5
    case right1, right2, right3, right4, right5
    
}

extension UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Shadow Layer
    
    /// Default and can Create new Shadow
    /// - Parameter color: There we put shadow color (black is the default color).
    /// - Parameter opacity: There are set from 0.0 to 1.0 Shadow color transparency - (0.10 is the default transparency).
    /// - Parameter blur: There is a definition of the intensity of the shadow the greater the value the less sharpness and increased proliferation and vice versa if the value decreased - (10.0 is the default).
    /// - Parameter x: There is a direction of the shadow from the right in case the number is positive (+) and the amy in case the number is negative (-) - (0.0 is the default).
    /// - Parameter y: There is a direction of the shadow from the bottom in case the number is positive (+) and the highest in case the number is negative (-) - (8.0 is the default).
    @discardableResult
    public func shadow(_ color: UIColor = .black,
                _ opacity: Float = 0.10,
                _ blur: CGFloat = 10.0,
                _ x: CGFloat = 0.0,
                _ y: CGFloat = 8.0) -> UIView {
        
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowRadius = blur
        layer.shadowOffset = CGSize(width: x, height: y)
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Selsct Destination Shadow | Prepared
    
    /// Prepared Shadow and can Selsct Destination
    /// - Parameter elevation: Here you can choose the direction and depth of shadows up to 5 levels.
    /// - Parameter color: Here you can put shadow color (black is the default color).
    @discardableResult
    public func shadow(_ elevation: Elevation, color: UIColor = .black) -> UIView {
        
        switch elevation {
            
        // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
        // MARK: - None Shadow
        case .none: self.shadow(.clear, 0, 0, 0, 0)
            
        // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
        // MARK: - Top Shadow
        case .top1: self.shadow(color, 0.10, 1 , 0,  -1)
        case .top2: self.shadow(color, 0.10, 4 , 0,  -3)
        case .top3: self.shadow(color, 0.10, 10, 0,  -8)
        case .top4: self.shadow(color, 0.13, 18, 0, -18)
        case .top5: self.shadow(color, 0.13, 26, 0, -26)
            
        // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
        // MARK: - Down Shadow
        case .down1: self.shadow(color, 0.10, 1 , 0,  1)
        case .down2: self.shadow(color, 0.10, 4 , 0,  3)
        case .down3: self.shadow(color, 0.10, 10, 0,  8)
        case .down4: self.shadow(color, 0.13, 18, 0, 18)
        case .down5: self.shadow(color, 0.13, 26, 0, 26)
            
        // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
        // MARK: - Left Shadow
        case .left1: self.shadow(color, 0.10, 1 , -1,  0)
        case .left2: self.shadow(color, 0.10, 4 , -3,  0)
        case .left3: self.shadow(color, 0.10, 10, -8,  0)
        case .left4: self.shadow(color, 0.13, 18, -18, 0)
        case .left5: self.shadow(color, 0.13, 26, -26, 0)
            
        // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
        // MARK: - Right Shadow
        case .right1: self.shadow(color, 0.10, 1 , 1,  0)
        case .right2: self.shadow(color, 0.10, 4 , 3,  0)
        case .right3: self.shadow(color, 0.10, 10, 8,  0)
        case .right4: self.shadow(color, 0.13, 18, 18, 0)
        case .right5: self.shadow(color, 0.13, 26, 26, 0)
            
        // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
            
        }
        
        return self
    }
    
}

