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
        
    let y = UIView()
    let x = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setup2UI()
    }
    
    
    func setupUI() {
        
        view.addSubview(y)
        y.backgroundColor = .Blue500
        y.top(20, safeArea: true).left(20).right(20).height(50)
        
//        y.translatesAutoresizingMaskIntoConstraints = false
//        y.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        y.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        y.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
//        y.heightAnchor.constraint(equalToConstant: 50).isActive = true

        y.shadow(.down5).cornerRadius(25).moveUp().fadeIn().gradient(set: .warmFlame, corner: 20)
        print(y.bounds)
        
    }
    
    func setup2UI() {
        
        view.addSubview(x)
        x.backgroundColor = .Blue400
//        x.top(y, spacing: 40)
//        x.left(40).right(40).height(60)

        x.top(y.bottomAnchor, spacing: -25)
        x.left(40)
        x.right(40)
        x.height(50)
        
        x.shadow(.down5).cornerRadius(25).moveUp(delay: 0.2).fadeIn(delay: 0.2)//.gradient(set: .nightFade, corner: 20)
        print(x.bounds)

        
    }
    
}
