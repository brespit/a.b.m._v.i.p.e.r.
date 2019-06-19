//
//  Router.swift
//  VIPER
//
//  Created by Flavio Leite on 19/06/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//
import Foundation
import UIKit

class Routing {
    
    let vc:TableViewController = TableViewController()
    let presenter = Presenter()
    let interactor = Interactor()
    var navigationController: UINavigationController?
    
    init() {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    
    func openAddView() {
        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let addVC = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        addVC.presenter = self.presenter
        vc.present(addVC, animated: true, completion: nil) 
    }
}
