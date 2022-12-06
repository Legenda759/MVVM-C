//
//  FirstViewController.swift
//  MVVM-C
//
//  Created by Legenda_759 on 06/12/22.
//

import UIKit

class FirstViewController: UIViewController, FirstViewInstaller {
    
    var mainView: UIView { view }
    
    var fullName: UILabel!
    var showMore: UIButton!
    
    var viewModel = FirstViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(
            title: "Log out",
            style: .plain,
            target: self,
            action: #selector(logOut)
        )
        
        if let user = viewModel.user {
            if let name = user.name, let secondName = user.secondName {
                fullName.text = "Hello! \(name) \(secondName)"
            }
        }
        
        showMore.addTarget(self, action: #selector(showMoreTapped), for: .touchUpInside)
        
    }
    
    @objc func showMoreTapped() {
        viewModel.coordinator?.pushSecondViewController()
    }
    
    @objc func logOut() {
        viewModel.coordinator?.back()
    }

}
