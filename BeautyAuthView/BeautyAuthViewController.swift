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


class BeautyAuthViewController: UIViewController, UITextFieldDelegate {

// MARK: - Props
    var mode: Mode = .signIn

    @IBOutlet var singInButton: UIButton!
    @IBOutlet var singUpButton: UIButton!
    
    @IBOutlet var signInLeftConstraint: NSLayoutConstraint!
    @IBOutlet var signUpLeftConstraint: NSLayoutConstraint!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var backgroundImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var signInUserNameTextField: UITextField!
    @IBOutlet var signInPasswordTextField: UITextField!
    
    
// MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        signInUserNameTextField.delegate = self
        signInPasswordTextField.delegate = self
    }
    
    func setupView() {
        singInButton.transform = CGAffineTransform(scaleX: 2, y: 2)
        singUpButton.titleLabel?.textColor = UIColor(red: 119.00/255.00, green: 119.00/255.00, blue: 119.00/255.00, alpha: 1)
    }

    
// MARK: - ACTIONS
    @IBAction func signInButtonTap(sender: UIButton){
        if mode != .signIn {
            Animations.animateSetActiveMode(button: singInButton, leftConstraint: signInLeftConstraint, view: self.view)
            Animations.animateSetUnactiveMode(button: singUpButton, leftConstraint: signUpLeftConstraint, view: self.view)
            mode = .signIn
        }
    }
    
    @IBAction func signUpButtonTap(sender: UIButton){
        if mode != .signUp {
            Animations.animateSetActiveMode(button: singUpButton, leftConstraint: signUpLeftConstraint, view: self.view)
            Animations.animateSetUnactiveMode(button: singInButton, leftConstraint: signInLeftConstraint, view: self.view)
            mode = .signUp
        }
    }
    
    @IBAction func viewTap(sender: UIControl) {
        signInUserNameTextField.resignFirstResponder()
        signInPasswordTextField.resignFirstResponder()
    }
    
// MARK: - TextField Delegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        UIView.animate(withDuration: 0.3) {
            self.backgroundImageHeightConstraint.constant = 600
            self.view.layoutIfNeeded()
        }
        return true
    }
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        UIView.animate(withDuration: 0.3) {
            self.backgroundImageHeightConstraint.constant = 300
            self.view.layoutIfNeeded()
        }
        return true
    }
    

}

