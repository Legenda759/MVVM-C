//
//  UIStackView.swift
//  MVVM-C
//
//  Created by Legenda_759 on 04/12/22.
//

import UIKit

extension UIStackView {
    
    func config(axis: NSLayoutConstraint.Axis?, spacing: CGFloat?, alignment: Alignment?, distribution: Distribution?) {
        
        if let axis = axis {
            self.axis = axis
        }
        
        if let spacing = spacing {
            self.spacing = spacing
        }
        
        if let alignment = alignment {
            self.alignment = alignment
        }
        
        if let distribution = distribution {
            self.distribution = distribution
        }
        
    }
    
}

