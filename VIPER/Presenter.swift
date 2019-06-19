//
//  Presenter.swift
//  VIPER
//
//  Created by Flavio Leite on 19/06/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import Foundation
import UIKit

class Presenter {
    var view:TableViewController?
    var interactor:Interactor?
    var routing:Routing?
    
    init() {
        
    }
    
    func addNewObject() {
        routing!.openAddView()
    }
    
    func addNewObjectWithData(name:String, surname:String) {
        interactor!.addNewPersonWithData(nombre: name, apellido: surname)
    }
    
    func updateObjects(objects: [String]) {
        view!.setListWithObjects(objects: objects)
    }
}
