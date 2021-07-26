//
//  SCTextField.swift
//  SCTextField
//
//  Created by Ary on 26/07/21.
//  Copyright © 2021 Ary. All rights reserved.
//

import UIKit

class SCTextField: UITextField {

 
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTextField()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureTextField()
    }
    
    private func configureTextField() {
     
        borderStyle = .roundedRect
        isSecureTextEntry = true
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 9)]
        attributedPlaceholder = NSAttributedString(string: "●●●●●●●●", attributes: attributes)
        configureRightView()
    }
    
    private func configureRightView() {
        
        let rightView = UIButton(type: .system)
        rightView.tintColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        toggleImage(rightView)
        rightView.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
        let size: CGFloat = 25
        rightView.frame = CGRect(x: self.frame.size.width - size, y: 5, width: size, height: size)
        rightView.addTarget(self, action: #selector(self.togglePasswordView), for: .touchUpInside)
        self.rightView = rightView
        self.rightViewMode = .always
        
    }
    
    private func toggleImage(_ button: UIButton) {
        
        if isSecureTextEntry {
            button.setImage(UIImage(systemName: "eye"), for: .normal)
        }else{
            button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            
        }
    }
    
    @IBAction func togglePasswordView(_ button: UIButton) {
        self.isSecureTextEntry.toggle()
        
        toggleImage(button)
    }

}
