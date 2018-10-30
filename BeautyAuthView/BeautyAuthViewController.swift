//
//  ViewController.swift
//  BeautyAuthView
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Ivan Elioskin. All rights reserved.
//

import UIKit

enum Mode {
    case signIn
    case signUp
}


class BeautyAuthViewController: UIViewController {

// MARK: - Props
    var mode: Mode = .signIn

    
// MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        
    }

    
// MARK: - ACTIONS
    @IBAction func signInButtonTap(sender: UIButton){
        if mode != .signIn {
            
        }
        mode = .signIn
    }
    
    @IBAction func signUpButtonTap(sender: UIButton){
        if mode != .signUp {
            
        }
        mode = .signUp
    }
    

}

