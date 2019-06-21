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
    var v4 = UIButton(type: .system)
    var mainStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
        
    }
    
    private func printo() {
        print("DimensionsV1: \(v1.bounds)")
        print("DimensionsV2: \(v2.bounds)")
        print("DimensionsV3: \(v3.bounds)")
    }
    
    private func setupLayout() {
        view.addSubviews(mainStack)
        v1.height(140)
        mainStack.VStack(v1,v2,v3).spacing(20).distribution(.fillEqually).fillBottom(20, safeArea: true)
        
        
        mainStack.layoutIfNeeded()
        printo()
    }
    
    private func setupUI() {
        
        v1.addSubview(v4)
        v4.fill(10).backColor(.white).cornerEdges(20)
        
        v1.shadow(.down4).moveUp(delay: 0.0).fadeIn(delay: 0.0)
        v2.shadow(.down4).moveUp(delay: 0.1).fadeIn(delay: 0.1)
        v3.shadow(.down4).moveUp(delay: 0.2).fadeIn(delay: 0.2)
        
        v4.addTarget(self, action: #selector(alarto), for: .touchUpInside)
        
    }
    
    @objc func alarto() {
        Alert.show(note: "Welcome to UIKitX", status: .success, direction: .ltr)
    }
}
