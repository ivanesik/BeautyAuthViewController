//
//  RestoreViewController.swift
//  BeautyAuthView
//
//  Created by Admin on 01.11.2018.
//  Copyright © 2018 Ivan Elioskin. All rights reserved.
//

import UIKit

class RestoreViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func backButtonTap(sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
