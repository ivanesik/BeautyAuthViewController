//
//  ConfirmViewController.swift
//  BeautyAuthView
//
//  Created by Admin on 01.11.2018.
//  Copyright © 2018 Ivan Elioskin. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet var firstLetterTextField: UITextField!
    @IBOutlet var secondLetterTextField: UITextField!
    @IBOutlet var thirdLetterTextField: UITextField!
    @IBOutlet var fourthLetterTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLetterTextField.delegate = self
        secondLetterTextField.delegate = self
        thirdLetterTextField.delegate = self
        fourthLetterTextField.delegate = self
        firstLetterTextField.becomeFirstResponder()
    }
    
    
// MARK: - ACTIONS
    @IBAction func backButtonTap(){
        self.navigationController?.popViewController(animated: true)
    }

}


extension ConfirmViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        switch textField {
        case firstLetterTextField:
            firstLetterTextField.text = string
            secondLetterTextField.becomeFirstResponder()
            break
        case secondLetterTextField:
            secondLetterTextField.text = string
            thirdLetterTextField.becomeFirstResponder()
            break
        case thirdLetterTextField:
            thirdLetterTextField.text = string
            fourthLetterTextField.becomeFirstResponder()
            break
        case fourthLetterTextField:
            fourthLetterTextField.text = string
            fourthLetterTextField.resignFirstResponder()
            break
        default:
            break
        }
        return true
    }
    
}
