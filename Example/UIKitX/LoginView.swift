//
//  LoginView.swift
//  UIKitX_Example
//
//  Created by Ali AlNaghmoush on 22/06/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import UIKitX

extension LoginController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - SetupUI
    func setupUI() {
        topViewUI()
        topImageUI()
        textStackUI()
        textLoginUI()
        fieldStackUI()
        buttonStackUI()
        signupUI()
        view.layoutIfNeeded()
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TopViewUI
    private func topViewUI() {
        topView.fillTop().height(280).cornerEdges(34).maskedCorners(.bottom).maskView(true).moveDown().fadeIn()
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TopImageUI
    private func topImageUI() {
        topImage.fill()
        topImage.contentMode = .scaleAspectFill
        topImage.image = UIImage(named: "Lino")
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TextStackUI
    private func textStackUI() {
        
//        topView.addSubview(textStack)
        textStack.VStack(textOne,textTwo).spacing(-70).alignment(.center).distribution(.fillEqually).center()
        
        textOne.text = "Welcom to"
        textTwo.text = "UIKitX"
        
        textOne.textColor(.white, with: textTwo)
        textOne.font(name: "Changa-Regular", size: 34)
        textTwo.font(name: "Changa-Regular", size: 59)
        
        textOne.moveDown(duration: 1.5,delay: 0.7).fadeIn(duration: 1.5,delay: 0.7)
        textTwo.moveDown(duration: 1.5,delay: 0.8).fadeIn(duration: 1.5,delay: 0.8)
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TextLoginUI
    private func textLoginUI() {
        textLogin.top(toBottom: topView, spacing: 30).centerX().moveUp(duration: 1.5,delay: 1).fadeIn(duration: 1.5,delay: 1)
        textLogin.text("Login To Your Account").textAlignment(.center).textColor(UIColor(white: 1, alpha: 0.8)).font(name: "Changa-Regular", size: 21)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - FieldStackUI
    private func fieldStackUI() {
        
//        view.addSubview(fieldStack)
        fieldStack.VStack(username,password).spacing(20).distribution(.fillEqually).top(toBottom: textLogin, spacing: 20).fillX(20)
        
        
        username.height(50, views: password).cornerEdges(25, views: password).backColor(fieldColor, with: password)
        
        username.font = UIFont(name: "Changa-Regular", size: 16)
        password.font = UIFont(name: "Changa-Regular", size: 16)
        
        username.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: secondTextColor])
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: secondTextColor])
        
        username.textColor = .white
        password.textColor = .white
        
        username.padding()
        password.padding()
        
        password.isSecureTextEntry = true
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - ButtonStackUI
    private func buttonStackUI() {
        
//        view.addSubview(buttonStack)
        buttonStack.HStack(signin,forgot).spacing(20).distribution(.fillEqually).top(toBottom: fieldStack, spacing: 20).fillX(20)
        
        signin.height(50, views: forgot).cornerEdges(25).backColor(buttonColor).border(width: 1, color: borderColor)
        
        signin.setTitle("Sign In", for: .normal)
        forgot.setTitle("Forgot Password?", for: .normal)
        
        signin.setTitleColor(.white, for: .normal)
        forgot.setTitleColor(secondTextColor, for: .normal)
        
        signin.titleLabel?.font(name: "Changa-Regular", size: 16)
        forgot .titleLabel?.font(name: "Changa-Regular", size: 14)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - SignupUI
    private func signupUI() {
        
        signup.fillBottom(20, safeArea: true).height(50).cornerEdges(25).backColor(buttonColor)
        
        signup.setTitle("Sign Up", for: .normal)
        signup.setTitleColor(UIColor(white: 1, alpha: 0.5), for: .normal)
        signup.titleLabel?.font(name: "Changa-Regular", size: 16)
    }
    
}



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
