//
//  UIView.swift
//  MVVM-C
//
//  Created by Legenda_759 on 03/12/22.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
    
}
