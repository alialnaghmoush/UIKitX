//
//  ViewController.swift
//  UIKitX
//
//  Created by alialnaghmoush on 05/25/2019.
//  Copyright (c) 2019 alialnaghmoush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    
    let newX = UIView()
    let newY = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        newXUI()
//        newYUI()
//        
    }
    
    
    private func newXUI() {
        
        view.addSubview(newX)
//        newX.backgroundColor = UIColor.LightBlue500
//        newX.cTop(20).cLeft(20).cRight(20).cHeight(50)
        
        print(newX.bounds)

    }
    
    func newYUI() {
//
        view.addSubview(newY)
//        newY.backgroundColor = UIColor.Gray500
//        newY.cTop(40).cLeft(20).cRight(20).cHeight(50)
        
        
        print(newY.bounds)
    }
    
}
