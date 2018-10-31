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
    var singInTextFields: [TextFieldTop] = []
    var singUpTextFields: [TextFieldTop] = []

    @IBOutlet var singInButton: UIButton!
    @IBOutlet var singUpButton: UIButton!
    
    @IBOutlet var signInLeftConstraint: NSLayoutConstraint!
    @IBOutlet var signUpLeftConstraint: NSLayoutConstraint!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var backgroundImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var signInUserNameTextField: UITextField!
    @IBOutlet var signInPasswordTextField: UITextField!
    @IBOutlet var signInUserNameTextFieldTopConstraint: NSLayoutConstraint!
    @IBOutlet var signInPasswordTextFieldTopConstraint: NSLayoutConstraint!
    
    @IBOutlet var signUpUserNameTextField: UITextField!
    @IBOutlet var signUpPasswordTextField: UITextField!
    @IBOutlet var signUpConfirmPasswordTextField: UITextField!
    @IBOutlet var signUpUserNameTextFieldTopConstraint: NSLayoutConstraint!
    @IBOutlet var signUpPasswordTextFieldTopConstraint: NSLayoutConstraint!
    @IBOutlet var signUpConfirmPasswordTextFieldTopConstraint: NSLayoutConstraint!
    
    @IBOutlet var enterButtonTopConstarain: NSLayoutConstraint!
    
    
// MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        signInUserNameTextField.delegate = self
        signInPasswordTextField.delegate = self
        signUpUserNameTextField.delegate = self
        signUpPasswordTextField.delegate = self
        signUpConfirmPasswordTextField.delegate = self
        singInTextFields = [(textField: signInUserNameTextField, topConstraint: signInUserNameTextFieldTopConstraint),
                            (textField: signInPasswordTextField, topConstraint: signInPasswordTextFieldTopConstraint)]
        singUpTextFields = [(textField: signUpUserNameTextField, topConstraint: signUpUserNameTextFieldTopConstraint),
                            (textField: signUpPasswordTextField, topConstraint: signUpPasswordTextFieldTopConstraint),
                            (textField: signUpConfirmPasswordTextField, topConstraint: signUpConfirmPasswordTextFieldTopConstraint)]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupView()
    }
    
    func setupView() {
        singUpButton.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        singUpButton.titleLabel?.textColor = UIColor(red: 119.00/255.00, green: 119.00/255.00, blue: 119.00/255.00, alpha: 1)
        for textfield in singUpTextFields {
            textfield.textField.alpha = 0
        }
    }

    
// MARK: - ACTIONS
    @IBAction func signInButtonTap(sender: UIButton){
        if mode != .signIn {
            closeKeyBoard()
            Animations.animateSetActiveMode(button: singInButton, leftConstraint: signInLeftConstraint, view: self.view)
            Animations.animateSetUnactiveMode(button: singUpButton, leftConstraint: signUpLeftConstraint, view: self.view)
            Animations.animateTextFieldsUprise(textfields: singInTextFields, view: self.view)
            Animations.animateTextFieldsLeaving(textfields: singUpTextFields, view: self.view)
            Animations.animateEnterButtonUprise(buttonTopConstraint: enterButtonTopConstarain, view: self.view)
            mode = .signIn
        }
    }
    
    @IBAction func signUpButtonTap(sender: UIButton){
        if mode != .signUp {
            closeKeyBoard()
            Animations.animateSetActiveMode(button: singUpButton, leftConstraint: signUpLeftConstraint, view: self.view)
            Animations.animateSetUnactiveMode(button: singInButton, leftConstraint: signInLeftConstraint, view: self.view)
            Animations.animateTextFieldsUprise(textfields: singUpTextFields, view: self.view)
            Animations.animateTextFieldsLeaving(textfields: singInTextFields, view: self.view)
            Animations.animateEnterButtonDown(buttonTopConstraint: enterButtonTopConstarain, view: self.view)
            mode = .signUp
        }
    }
    
    @IBAction func viewTap(sender: UIControl) {
        closeKeyBoard()
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
    
// MARK: - Help
    private func closeKeyBoard(){
        signInUserNameTextField.resignFirstResponder()
        signInPasswordTextField.resignFirstResponder()
        signUpUserNameTextField.resignFirstResponder()
        signUpPasswordTextField.resignFirstResponder()
        signUpConfirmPasswordTextField.resignFirstResponder()
    }
    

}

