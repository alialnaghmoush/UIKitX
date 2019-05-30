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
        
    let x = UIView()
    let y = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setup2UI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    
    func setupUI() {
        
        view.addSubview(y)
        y.fillTop(20, safeArea: true).height(80)
        y.shadow(.down5).cornerRadius(20).moveUp().fadeIn().gradient(set: .warmFlame, corner: 20)
        
    }
    
    func setup2UI() {
        
        view.addSubview(x)
        x.top(y.bottomAnchor, spacing: 20).left(20).right(20).height(80)
        x.shadow(.down5).cornerRadius(20).moveUp(delay: 0.2).fadeIn(delay: 0.2).gradient(set: .nightFade, corner: 20)
        
    }
    
}
