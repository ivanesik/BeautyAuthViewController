//
//  Animations.swift
//  BeautyAuthView
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Ivan Elioskin. All rights reserved.
//

import UIKit

typealias TextFieldTop = (textField: UITextField, topConstraint: NSLayoutConstraint)


class Animations {

    static func animateSetActiveMode(button: UIButton, leftConstraint: NSLayoutConstraint, view: UIView) {
        UIView.animate(withDuration: 0.5) {
            button.titleLabel?.textColor = UIColor.black
            button.transform = CGAffineTransform(scaleX: 2, y: 2)
            leftConstraint.constant = 25
            view.layoutIfNeeded()
        }
    }
    
    static func animateSetUnactiveMode(button: UIButton, leftConstraint: NSLayoutConstraint, view: UIView) {
        UIView.animate(withDuration: 0.5) {
            button.titleLabel?.textColor = UIColor(red: 119.00/255.00, green: 119.00/255.00, blue: 119.00/255.00, alpha: 1)
            button.transform = CGAffineTransform(scaleX: 1, y: 1)
            leftConstraint.constant = 95
            view.layoutIfNeeded()
        }
    }
    
    
    static func animateTextFieldsUprise(textfields: [TextFieldTop], view: UIView) {
        var durationCount: Double = 0
        for textfield in textfields {
            UIView.animate(withDuration: 0.3, delay: (durationCount * 0.1), options: .curveEaseInOut, animations: {
                textfield.topConstraint.constant -= 350
                view.layoutIfNeeded()
            }, completion: { (finished) in  })
            durationCount += 1
        }
    }
    
    static func animateTextFieldsLeaving(textfields: [TextFieldTop], view: UIView) {
        var durationCount: Double = 0
        for textfield in textfields {
            UIView.animate(withDuration: 0.3, delay: (durationCount * 0.1), options: .curveEaseInOut, animations: {
                textfield.topConstraint.constant += 350
                view.layoutIfNeeded()
            }, completion: { (finished) in  })
            durationCount += 1
        }
    }
    
    
}
