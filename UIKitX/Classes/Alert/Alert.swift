//
//  Alert.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public struct Alert {

    static public func show(note: String, status: AlertStatus, direction: Direction = .rtl) {
        let alertView = AlertView(note: note, status: status)
        alertView.direction = direction
        alertView.play()
    }
    
}

