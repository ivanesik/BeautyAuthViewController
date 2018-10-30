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

    @IBOutlet var singInButton: UIButton!
    @IBOutlet var singUpButton: UIButton!
    
    
// MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        singInButton.transform = CGAffineTransform(scaleX: 1.81, y: 1.81)
    }

    
// MARK: - ACTIONS
    @IBAction func signInButtonTap(sender: UIButton){
        if mode != .signIn {
            Animations.animateSizeUp(button: singInButton)
            Animations.animateSizeDown(button: singUpButton)
            mode = .signIn
        }
    }
    
    @IBAction func signUpButtonTap(sender: UIButton){
        if mode != .signUp {
            Animations.animateSizeUp(button: singUpButton)
            Animations.animateSizeDown(button: singInButton)
            mode = .signUp
        }
    }
    

}

