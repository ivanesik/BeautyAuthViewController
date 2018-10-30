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
        }
    }
    
    static func animateSizeDown(button: UIButton) {
        UIView.animate(withDuration: 1) {
            button.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }
    
    static func animateColorBlack() {
        
    }
    
    static func animateColorGray() {
        
    }
    
    
}
