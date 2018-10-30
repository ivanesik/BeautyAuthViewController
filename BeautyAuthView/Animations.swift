//
//  Animations.swift
//  BeautyAuthView
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Ivan Elioskin. All rights reserved.
//

import UIKit


class Animations {

    static func animateSizeUp(button: UIButton) {
        UIView.animate(withDuration: 1) {
            button.transform = CGAffineTransform(scaleX: 1.81, y: 1.81)
            button.titleLabel?.textColor = UIColor.black
        }
    }
    
    static func animateSizeDown(button: UIButton) {
        UIView.animate(withDuration: 1) {
            button.transform = CGAffineTransform(scaleX: 1, y: 1)
            button.titleLabel?.textColor = UIColor(red: 119.00/255.00, green: 119.00/255.00, blue: 119.00/255.00, alpha: 1)
        }
    }
    
    
}
