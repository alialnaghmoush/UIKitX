//
//  ViewController.swift
//  UIKitX
//
//  Created by alialnaghmoush on 05/25/2019.
//  Copyright (c) 2019 alialnaghmoush. All rights reserved.
//

import UIKit
import UIKitX

class ViewController: UIViewController {
        
    
        let newX = UIView()
        let newY = UIView()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            newXUI()
            newYUI()
            
    }
    
    private func newXUI() {
        
        view.addSubview(newX)
        newX.backColor(.LightBlue100)
        newX.top(20, safeArea: true).fillHorizontally(20).height(50)
        newX.roundEdges().gradient(set: .warmFlame, roundEdges: true)
        newX.shadow(.down3).moveUp().fadeIn()
        
        print("DimensionsX: \(newX.bounds)")

    }
    
    func newYUI() {

        view.addSubview(newY)
        newY.backColor(.LightBlue100)
//        newY.top(newX, spacing: 60)
        newY.fillHorizontally(20).height(50)
        let x = Constraint(item: newY, attribute: .top, relatedBy: .equal, toItem: newX, attribute: .bottom, multiplier: 1, constant: 20)
        view.addConstraint(x)
        newY.roundEdges().gradient(set: .frozenDreams, roundEdges: true)
        newY.shadow(.down3).moveUp(delay: 0.2).fadeIn(delay: 0.2)

        print("DimensionsY: \(newY.bounds)")
    }
    
}
