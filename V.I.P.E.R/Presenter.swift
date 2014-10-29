//
//  Presenter.swift
//  V.I.P.E.R
//
//  Created by iAcisclo on 28/10/14.
//  Copyright (c) 2014 iAcisclo. All rights reserved.
//

import Foundation
import UIKit

class Presenter:InteractorProtocolOutput{
    
    var view:TableViewController?
    var interactor:Interactor?
    var routing:Routing?
    
    init() {
        
    }
    
    func addNewObject() {
        routing!.openAddView()
    }
    
    func addNewObjectWithData(nombre n:String, apellido s:String) {
        
        interactor!.addNewPersonWithData(nombre: n, apellido: s)
    }
    
    func updateObjects(#objects: [String]) {
        
        view!.setListWithObjects(objects: objects)
    }
    
}

