//
//  Interactor.swift
//  V.I.P.E.R
//
//  Created by iAcisclo on 28/10/14.
//  Copyright (c) 2014 iAcisclo. All rights reserved.
//

import Foundation

class Interactor:InteractorProtocolInput {
    
    var presenter:Presenter?
    var dataBase:DataBase?
    
    init() {
        dataBase = DataBase()
    }
    
    func addNewPersonWithData(#nombre:String, apellido:String) {
        
        if (countElements(nombre) > 0 && countElements(apellido) > 0) {
            
            let persona = Persona()
            persona.nombre = nombre
            persona.apellido = apellido

            if let personas = dataBase?.personas?{
                dataBase?.personas?.append(persona)
            }else{
                dataBase?.personas = [Persona]()
                dataBase?.personas?.append(persona)
            }
            
            self.updateList()
        }
    }
    
    func updateList() {
        
        var arrayPersonas = [String]()
        for persona in dataBase!.personas! {
            
            arrayPersonas.append(persona.nombre! + " " + persona.apellido!)
        }
        
        presenter!.updateObjects(objects: arrayPersonas)

    }
}