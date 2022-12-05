//
//  UIButton.swift
//  MVVM-C
//
//  Created by Legenda_759 on 04/12/22.
//

import UIKit

extension UIButton {
    
    func config(backgroundColor: UIColor?, title: String?, titleColor: UIColor?, cornerRadius: CGFloat?) {
        
        if let backgroundColor = backgroundColor {
            self.backgroundColor = backgroundColor
        }
        
        if let title = title {
            self.setTitle(title, for: .normal)
        }
        
        if let titleColor = titleColor {
            self.setTitleColor(titleColor, for: .normal)
        }
        
        if let cornerRadius = cornerRadius {
            self.layer.cornerRadius = cornerRadius
        }
        
    }
    
}
