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
        superViewUI()
        topViewUI()
        switcherUI()
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
    private func superViewUI() {
        view.backColor(theme.baseColor)
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TopViewUI
    private func topViewUI() {
        topView.fillTop().height(280).cornerEdges(34).maskedCorners(.bottom).maskView(true).moveDown().fadeIn()
        
        bTopView.fillTop().height(340).cornerEdges(34).maskedCorners(.bottom).moveDown().fadeIn().backColor(theme.fieldColor)
    }
    
    
    private func switcherUI() {
        switcher.top(10, safeArea: true).size(32).centerX()
        switcher.setImage(theme.switcher, for: .normal)
        switcher.contentMode = .scaleAspectFit
        switcher.tintColor(.white)
        switcher.addTarget(self, action: #selector(togglo), for: .touchUpInside)
        UIView.transition(with: switcher, duration: 0.3, options: .transitionFlipFromTop, animations: nil, completion: nil)
    }
    
    @objc func togglo() {
        UIView.animate(withDuration: 0.5) {
            self.theme.isDarkMode.toggle()
            self.setupUI()
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TopImageUI
    private func topImageUI() {
        topImage.fill()
        topImage.contentMode = .scaleAspectFill
        topImage.image = UIImage(named: "Lines")
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TextStackUI
    private func textStackUI() {
        
        textStack.VStack(textOne,textTwo).spacing(-70).alignment(.center).distribution(.fillEqually).center()
        
        textOne.text = "Welcom to"
        textTwo.text = "UIKitX"
        
        textOne.textColor(.white, with: textTwo)
        textOne.font(name: theme.regularFont, size: 34)
        textTwo.font(name: theme.regularFont, size: 59)
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - TextLoginUI
    private func textLoginUI() {
        textLogin.top(toBottom: topView, spacing: 10).centerX()
        textLogin.text("Login To Your Account").textAlignment(.center).textColor(theme.textColor).font(name: theme.regularFont, size: 20).moveDown(delay: 0.1).fadeIn(delay: 0.1)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - FieldStackUI
    private func fieldStackUI() {
        
        fieldStack.VStack(username,password).spacing(20).distribution(.fillEqually).top(toBottom: textLogin, spacing: 40).fillX(20)
        
        
        username.height(50, views: password).cornerEdges(25, views: password).backColor(theme.fieldColor, with: password)
        
        username.moveDown(delay: 0.1).fadeIn(delay: 0.1)//.shadow(.down1)
        password.moveDown(delay: 0.2).fadeIn(delay: 0.2)//.shadow(.down1)
        
        username.font = UIFont(name: theme.regularFont, size: 14)
        password.font = UIFont(name: theme.regularFont, size: 14)
        
        username.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: theme.thirdTextColor])
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: theme.thirdTextColor])
        
        username.textColor = theme.textColor
        password.textColor = theme.textColor
        
        username.padding()
        password.padding()
        
        password.isSecureTextEntry = true
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - ButtonStackUI
    private func buttonStackUI() {
        
        buttonStack.HStack(signin,forgot).spacing(20).distribution(.fill).top(toBottom: fieldStack, spacing: 20).fillX([20,30]).moveDown(delay: 0.3).fadeIn(delay: 0.3)
        
        signin.height(50, views: forgot).cornerEdges(25).backColor(theme.borderColor).shadow(.down3, color: .Blue900)
        
        signin.setTitle("Sign In", for: .normal)
        forgot.setTitle("Forgot Password?", for: .normal)
        
        signin.setTitleColor(.white, for: .normal)
        forgot.setTitleColor(theme.thirdTextColor, for: .normal)
        
        signin.titleLabel?.font(name: theme.regularFont, size: 16)
        forgot .titleLabel?.font(name: theme.regularFont, size: 14)
        
        signin.addTarget(self, action: #selector(alartoSignin), for: .touchUpInside)
        forgot.addTarget(self, action: #selector(alartoForgot), for: .touchUpInside)
    }
    
    @objc func alartoSignin(sender: UIButton) {
        sender.scaleInOut()
        Alert.show(note: "Welcome to UIKitX", status: .success, direction: .ltr)
    }
    
    @objc func alartoForgot(sender: UIButton) {
        sender.scaleInOut()
        Alert.show(note: "This property is currently disabled, Sorry", status: .warning, direction: .ltr)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - SignupUI
    private func signupUI() {
        
        signup.fillBottom().height(100).cornerEdges(25).maskedCorners(.top).backColor(theme.fieldColor).moveUp().fadeIn().shadow(.black, 0.02, 10, 0, -2)
        
        signup.setTitle("Create a new account", for: .normal)
        signup.setTitleColor(theme.textColor, for: .normal)
        signup.titleLabel?.font(name: theme.regularFont, size: 16)
        signup.addTarget(self, action: #selector(alartSignup), for: .touchUpInside)
    }
    
    @objc func alartSignup(sender: UIButton) {
        Alert.show(note: "Failed to create a new account", status: .error, direction: .ltr)
    }
    
}
