//
//  AlertError.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

extension Alert {
    
    static public func error(_ show: Error?, direction: Direction = .rtl) {
        
        switch direction {
        case .rtl:
            if show?.localizedDescription == ErrorFeedback.emailFormatted {
                Alert.show(note: "صيغة الإيميل غير صحيحة.", status: .warning)
                
            } else if show?.localizedDescription ==  ErrorFeedback.emailUsed {
                Alert.show(note: "هذا الإيميل مسجل مسبقاً.", status: .warning)
                
            } else if show?.localizedDescription ==  ErrorFeedback.userNoRecord {
                Alert.show(note: "الإيميل غير صحيح تحقق منه أو سجل حساب جديد.", status: .warning)
                
            } else if show?.localizedDescription ==  ErrorFeedback.passwordInvalid {
                Alert.show(note: "الباسورد غير صحيح ياجميل.", status: .error)
                
            } else if show?.localizedDescription ==  ErrorFeedback.networkError {
                Alert.show(note: "تحقق من أتصال الانترنت.", status: .warning)
                
            } else if show != nil {
                let otherError = show?.localizedDescription ?? "توجد مشكلة لكنها غير واضحة."
                Alert.show(note: "\(otherError)", status: .warning)
            }
        case .ltr:
            let otherError = show?.localizedDescription ?? "There is a problem but it is unclear."
            Alert.show(note: otherError, status: .warning, direction: .ltr)
            
        }
    }
    
}

private struct ErrorFeedback {
    
    static let emailFormatted = "The email address is badly formatted."
    static let emailUsed = "The email address is already in use by another account."
    static let userNoRecord = "There is no user record corresponding to this identifier. The user may have been deleted."
    static let passwordInvalid = "The password is invalid or the user does not have a password."
    static let networkError = "Network error (such as timeout, interrupted connection or unreachable host) has occurred."
    
}
