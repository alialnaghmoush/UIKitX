//
//  LoginController.swift
//  UIKitX_Example
//
//  Created by Ali AlNaghmoush on 22/06/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import UIKitX

class LoginController: UIViewController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    
    var topView = UIGradient(.sharpBlues)
    var topImage = UIImageView()
    
    var textStack = UIStackView()
    var textOne = UILabel()
    var textTwo = UILabel()
    
    var textLogin = UILabel()
    
    var fieldStack = UIStackView()
    var username = UITextField()
    var password = UITextField()
    
    var buttonStack = UIStackView()
    var signin = UIButton(type: .system)
    var forgot = UIButton(type: .system)
    
    var signup = UIButton(type: .system)
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - color
    
    let baseColor = UIColor("242B38")
    let secondColor = UIColor("212630")
    let secondTextColor = UIColor("ffffff", alpha: 0.34)
    let borderColor = UIColor("007FFE")
    let fieldColor = UIColor("ffffff", alpha: 0.05)
    let buttonColor = UIColor("212630")
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Status bar
    
    override var prefersStatusBarHidden: Bool { return false }
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subViewsUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
        
    }
    
    private func subViewsUI() {
        view.addSubviews(topView, textLogin, signup, fieldStack, buttonStack)
        topView.addSubviews(topImage, textStack)
    }
    
}
