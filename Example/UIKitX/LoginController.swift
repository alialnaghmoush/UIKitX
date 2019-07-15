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
    
    let theme = Style(darkMode: true)
    
    var bTopView = UIView()
    var topView = UIGradient(.sharpBlues)
    var topImage = UIImageView()
    var switcher = UIButton(type: .system)
    
    var textStack = UIStackView()
    var textOne = UILabel()
    var textTwo = UILabel()
    
    var textLogin = UILabel()
    
    var fieldStack = UIStackView()
    var username = UITextField()
    var password = UITextField()
    
    var buttonStack = UIStackView()
    var signin = UIButton()
    var forgot = UIButton(type: .system)
    
    var signup = UIButton(type: .system)
    
    
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
        view.addSubviews(bTopView, topView, textLogin, signup, fieldStack, buttonStack)
        topView.addSubviews(topImage, textStack)
        view.addSubview(switcher)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.view.endEditing(true)
        }
    }
    
}

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Extension UITextField
extension UITextField {
    
    public func padding(left: CGFloat = 20, right: CGFloat = 20) {
        
        let viewL = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.bounds.height))
        let viewR = UIView(frame: CGRect(x: 0, y: 0, width: right, height: self.bounds.height))
        
        self.leftView = viewL
        self.rightView = viewR
        self.leftViewMode = .always
        self.rightViewMode = .always
    }
}
