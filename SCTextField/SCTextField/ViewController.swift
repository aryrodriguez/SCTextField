//
//  ViewController.swift
//  SCTextField
//
//  Created by Ary on 26/07/21.
//  Copyright © 2021 Ary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let textField = SCTextField()
        textField.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 34))
        textField.center = view.center
        view.addSubview(textField)
    }


}

