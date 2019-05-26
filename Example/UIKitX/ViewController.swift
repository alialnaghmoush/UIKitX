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
        
    @IBOutlet weak var viewX: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t()
    }
    
    func t() {
        
        viewX.shadow(.down5).cornerRadius(10).moveUp().fadeIn()
        
    }
    
}

