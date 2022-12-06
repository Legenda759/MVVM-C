//
//  UIActivityIndicatorView.swift
//  MVVM-C
//
//  Created by Legenda_759 on 06/12/22.
//

import UIKit

extension UIActivityIndicatorView {
    static func simpleIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = .gray
        activityIndicator.hidesWhenStopped = true
        return activityIndicator
    }
}
