//
//  Alert.swift
//  Pods-UIKitX_Example
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

public struct Alert {
    
    static func show(note: String, status: AlertStatus, direction: Direction = .rtl) {
        let alertView = AlertView(note: note, status: status)
        alertView.direction = direction
        alertView.play()
    }
}
