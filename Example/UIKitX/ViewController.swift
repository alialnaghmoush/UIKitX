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
    
    var v1 = UIView()//UIGradient(.warmFlame)
    var v2 = UIView()//UIGradient(.nightFade)
    var v3 = UIView()//UIGradient(.softBlue)
    var v4 = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupUI()
        
        print("DimensionsV1: \(v1.bounds)")
        print("DimensionsV2: \(v2.bounds)")
        print("DimensionsV3: \(v3.bounds)")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()

    }
    
    private func setupLayout() {
        
        Alert.show(note: "Welcome to UIKitX", status: .success)
        
        let mainStack = UIStackView(arrangedSubviews: [v1,v2,v3])
        view.addSubview(mainStack)
        mainStack.fillTop(20, safeArea: true)
        mainStack.axis = .vertical
        mainStack.spacing = 10
        mainStack.distribution = .fillProportionally
        mainStack.alignment = .fill
        
        v2.height(50)
        
    }
    
    private func setupUI() {
        v1.addSubview(v4)
        view.backColor(.Blue600, views: v1,v2,v3)
        v1.cornerEdges(true, views: v2,v3)
        v4.fill(14).backColor(.white).cornerEdges(true)


        v1.shadow(.down4).moveUp(delay: 0.0).fadeIn(delay: 0.0)
        v2.shadow(.down4).moveUp(delay: 0.1).fadeIn(delay: 0.1)
        v3.shadow(.down4).moveUp(delay: 0.2).fadeIn(delay: 0.2)
        
    }
}
