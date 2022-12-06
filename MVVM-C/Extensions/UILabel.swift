//
//  UILabel.swift
//  MVVM-C
//
//  Created by Legenda_759 on 04/12/22.
//

import UIKit

extension UILabel {
    
    func config(font: UIFont?, color: UIColor?, textAlignment: NSTextAlignment?) {
        
        if let f = font {
            self.font = f
        }
        
        if let color = color {
            self.textColor = color
        }
        
        if let textAlignment = textAlignment {
            self.textAlignment = textAlignment
        }
        
    }
    
    func config(font: UIFont?, color: UIColor?, textAlignment: NSTextAlignment?, numberOfLines: Int?) {
        
        if let f = font {
            self.font = f
        }
        
        if let color = color {
            self.textColor = color
        }
        
        if let textAlignment = textAlignment {
            self.textAlignment = textAlignment
        }
        
        if let numberOfLines = numberOfLines {
            self.numberOfLines = numberOfLines
        }
        
    }
    
}
