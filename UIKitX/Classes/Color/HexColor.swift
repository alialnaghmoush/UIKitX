//
//  HexColor.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension HexColor {
        
    convenience public init?(_ hex: Hex, alpha: CGFloat? = nil) {
        
        guard let hexType = Type(from: hex), let components = hexType.components() else {
            return nil
        }
        
        self.init(red: components.red, green: components.green, blue: components.blue, alpha: alpha ?? components.alpha)
    }
    
    /// The string hex value representation of the current color
    var hex: Hex {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0, rgb: Int
//        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        if a == 1 { // no alpha value set, we are returning the short version
            rgb = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
            return String(format: "#%06x", rgb)
        } else {
            rgb = (Int)(r*255)<<24 | (Int)(g*255)<<16 | (Int)(b*255)<<8 | (Int)(a*255)<<0
            return String(format: "#%08x", rgb)
        }
    }
    
    private enum `Type` {
        
        case RGBshort(rgb: Hex)
        case RGBshortAlpha(rgba: Hex)
        case RGB(rgb: Hex)
        case RGBA(rgba: Hex)
        
        init?(from hex: Hex) {
            
            var hexString = hex
            hexString.removeHashIfNecessary()
            
            guard let t = Type.transform(hex: hexString) else {
                return nil
            }
            
            self = t
        }
        
        static func transform(hex string: Hex) -> Type? {
            switch string.count {
            case 3:
                return .RGBshort(rgb: string)
            case 4:
                return .RGBshortAlpha(rgba: string)
            case 6:
                return .RGB(rgb: string)
            case 8:
                return .RGBA(rgba: string)
            default:
                return nil
            }
        }
        
        var value: Hex {
            switch self {
            case .RGBshort(let rgb):
                return rgb
            case .RGBshortAlpha(let rgba):
                return rgba
            case .RGB(let rgb):
                return rgb
            case .RGBA(let rgba):
                return rgba
            }
        }
        
        typealias rgbComponents = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
        func components() -> rgbComponents? {
            
            var hexValue: UInt32 = 0
            guard Scanner(string: value).scanHexInt32(&hexValue) else {
                return nil
            }
            
            let r, g, b, a, divisor: CGFloat
            
            switch self {
                /**
                 The shorthand three-digit hexadecimal representation of color.
                 #RGB defines to the color #RRGGBB.
                 
                 - parameter hex3: Three-digit hexadecimal value.
                 - parameter alpha: 0.0 - 1.0. The default is 1.0.
                 */
            case .RGBshort(_):
                divisor = 15
                r = CGFloat((hexValue & 0xF00) >> 8) / divisor
                g = CGFloat((hexValue & 0x0F0) >> 4) / divisor
                b = CGFloat( hexValue & 0x00F) / divisor
                a = 1
                
                /**
                 The shorthand four-digit hexadecimal representation of color with alpha.
                 #RGBA defines to the color #RRGGBBAA.
                 
                 - parameter hex4: Four-digit hexadecimal value.
                 */
            case .RGBshortAlpha(_):
                divisor = 15
                r = CGFloat((hexValue & 0xF000) >> 12) / divisor
                g = CGFloat((hexValue & 0x0F00) >> 8) / divisor
                b = CGFloat((hexValue & 0x00F0) >> 4) / divisor
                a = CGFloat( hexValue & 0x000F) / divisor
                
                /**
                 The six-digit hexadecimal representation of color of the form #RRGGBB.
                 
                 - parameter hex6: Six-digit hexadecimal value.
                 */
            case .RGB(_):
                divisor = 255
                r = CGFloat((hexValue & 0xFF0000) >> 16) / divisor
                g = CGFloat((hexValue & 0x00FF00) >> 8) / divisor
                b = CGFloat( hexValue & 0x0000FF) / divisor
                a = 1
                
                /**
                 The six-digit hexadecimal representation of color with alpha of the form #RRGGBBAA.
                 
                 - parameter hex8: Eight-digit hexadecimal value.
                 */
            case .RGBA(_):
                divisor = 255
                r = CGFloat((hexValue & 0xFF000000) >> 24) / divisor
                g = CGFloat((hexValue & 0x00FF0000) >> 16) / divisor
                b = CGFloat((hexValue & 0x0000FF00) >> 8) / divisor
                a = CGFloat( hexValue & 0x000000FF) / divisor
            }
            
            return (red: r, green: g, blue: b, alpha: a)
        }
    }
}
