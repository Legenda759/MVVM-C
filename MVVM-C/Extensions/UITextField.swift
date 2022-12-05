//
//  UITextField.swift
//  MVVM-C
//
//  Created by Legenda_759 on 04/12/22.
//

import UIKit

extension UITextField {
    
    func config(borderStyle: BorderStyle?, placeholder: String?, textAlignment:  NSTextAlignment?, isSecureTextEntry: Bool?) {
        
        if let borderStyle = borderStyle {
            self.borderStyle = borderStyle
        }
        
        if let placeholder = placeholder {
            self.placeholder = placeholder
        }
        
        if let textAlignment = textAlignment {
            self.textAlignment = textAlignment
        }
        
        if let isSecureTextEntry = isSecureTextEntry {
            self.isSecureTextEntry = isSecureTextEntry
        }
        
    }
    
}
