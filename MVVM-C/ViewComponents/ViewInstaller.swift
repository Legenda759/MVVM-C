//
//  ViewInstaller.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import UIKit

protocol ViewInstaller: AnyObject {
    /// The parent (root) view of all subviews
    var mainView: UIView { get }
    
    /// Initializes, then embeds subviews. Finally, adds constraints of subviews
    func setupSubviews()
    
    /// Initializes all subview elements
    func initSubviews()
    
    /// Places each subview to its super-view
    func embedSubviews()
    
    /// Adds constraints of placed subviews
    func addSubviewsConstraints()
}


extension ViewInstaller {
    
    func setupSubviews() {
        initSubviews()
        embedSubviews()
        addSubviewsConstraints()
    }
    
    func initSubviews() {
        fatalError("Implementation pending...")
    }
    
    func embedSubviews() {
        fatalError("Implementation pending...")
    }
    
    func addSubviewsConstraints() {
        fatalError("Implementation pending...")
    }
}
