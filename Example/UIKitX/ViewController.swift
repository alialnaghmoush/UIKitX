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
    
    var v1 = UIGradient(.warmFlame, cornerEdges: 20)
    var v2 = UIGradient(.nightFade, cornerEdges: 20)
    var v3 = UIGradient(.softBlue, cornerEdges: 20)
    var v4 = UIGradient(colors: [.Red400,.Red800], start: .top, end: .bottom, locations: nil, cornerEdges: 20, roundEdges: false, style: .axial)

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
        mainStack.spacing = 20
        mainStack.distribution = .fillProportionally
        mainStack.alignment = .fill
        
        v2.height(200)
        
    }
    
    private func setupUI() {
        v1.addSubview(v4)
        v4.fill(20).backColor(.white).cornerEdges(20)

        v1.shadow(.down4).moveUp(delay: 0.0).fadeIn(delay: 0.0)
        v2.shadow(.down4).moveUp(delay: 0.1).fadeIn(delay: 0.1)
        v3.shadow(.down4).moveUp(delay: 0.2).fadeIn(delay: 0.2)
        
    }
}
