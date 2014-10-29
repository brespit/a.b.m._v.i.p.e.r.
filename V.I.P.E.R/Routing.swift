//
//  Routing.swift
//  V.I.P.E.R
//
//  Created by iAcisclo on 28/10/14.
//  Copyright (c) 2014 iAcisclo. All rights reserved.
//

import Foundation

import UIKit

class Routing {
    
    //build objects
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
        
        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let addVC:ViewController = storyBoard.instantiateViewControllerWithIdentifier("ViewController") as ViewController
        addVC.presenter = self.presenter
        
        vc.presentViewController(addVC, animated: true, completion: nil)
        
    }
}