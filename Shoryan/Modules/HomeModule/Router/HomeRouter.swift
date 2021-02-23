//
//  HomeRouter.swift
//  Shoryan
//
//  Created by Ahmed AlSai on 31/12/2020.
//


import UIKit

class HomeRouter: BaseRouter {
    
    
    var navigationController: UINavigationController?
    
    static let shared = HomeRouter()
    
    
    func createHomePage() -> UIViewController {
        let viewController = HomeViewController()
        
        let presenter = HomePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.view = viewController
        
        return viewController
    }
    
    func createHomePageEmbeddedInViewController() -> UIViewController {
        let nc = embedInNavigationController(viewController: createHomePage())
        navigationController = nc
        return nc
    }
    
    
    
}