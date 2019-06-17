//
//  AlertStatus.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public enum AlertStatus {
    case success, error, warning, info
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Container View
    var container: UIView {
        
        switch self {
        case .success:
            let container = UIView()
            container.backgroundColor = #colorLiteral(red: 0.0431372549, green: 0.6901960784, blue: 0.4823529412, alpha: 1)
            return container
        case .error:
            let container = UIView()
            container.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.1529411765, blue: 0.1529411765, alpha: 1)
            return container
        case .warning:
            let container = UIView()
            container.backgroundColor = #colorLiteral(red: 1, green: 0.6784313725, blue: 0.05098039216, alpha: 1)
            return container
        case .info:
            let container = UIView()
            container.backgroundColor = #colorLiteral(red: 0.04705882353, green: 0.4, blue: 1, alpha: 1)
            return container
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Icon in container
    var icon: UIView {
        
        switch self {
        case .success:
            let icon = SuccessShape()
            icon.iconColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return icon
        case .error:
            let icon = ErrorShape()
            icon.iconColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return icon
        case .warning:
            let icon = WarningShape()
            icon.iconColor = #colorLiteral(red: 0.09411764706, green: 0.1725490196, blue: 0.3098039216, alpha: 1)
            return icon
        case .info:
            let icon = InfoShape()
            icon.iconColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return icon
        }
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Note in container
    var note: UILabel {
        
        switch self {
        case .success:
            let note = UILabel()
            note.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return note
        case .error:
            let note = UILabel()
            note.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return note
        case .warning:
            let note = UILabel()
            note.textColor = #colorLiteral(red: 0.09411764706, green: 0.1725490196, blue: 0.3098039216, alpha: 1)
            return note
        case .info:
            let note = UILabel()
            note.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return note
        }
    }
    
}
