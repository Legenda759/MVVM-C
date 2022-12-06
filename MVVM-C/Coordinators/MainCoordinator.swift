//
//  MainCoordinator.swift
//  MVVM-C
//
//  Created by Legenda_759 on 05/12/22.
//

import UIKit

protocol Coordinator {
    
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func startCoordinator()
    
}

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func startCoordinator() {
        let viewController = LoginViewController()
        let viewModel = LoginViewModel()
        viewModel.coordinator = self
        viewController.viewModel = viewModel
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func pushMainViewController() {
        let viewController = FirstViewController()
        let viewModel = FirstViewModel()
        viewModel.coordinator = self
        viewModel.user = User.logins
        viewController.viewModel = viewModel
//        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func pushSecondViewController() {
        let viewController = SecondViewController()
        let viewModel = SecondViewModel()
        viewModel.coordinator = self
        viewModel.user = User.logins
        viewController.viewModel = viewModel
//        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func back() {
        navigationController.popViewController(animated: true)
    }
    
}
