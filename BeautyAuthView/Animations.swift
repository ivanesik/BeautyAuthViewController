//
//  Animations.swift
//  BeautyAuthView
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Ivan Elioskin. All rights reserved.
//

import UIKit


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
    
    
}
