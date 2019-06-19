//
//  Iteractor.swift
//  VIPER
//
//  Created by Flavio Leite on 19/06/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import Foundation

class Interactor {
    
    var presenter:Presenter?
    var dataBase:DataBase?
    
    init() {
        dataBase = DataBase()
    }
    
    func addNewPersonWithData(nombre:String, apellido:String) {
        
        if (nombre != "" && apellido != "") {
            
            let persona = Persona()
            persona.nombre = nombre
            persona.apellido = apellido
            
            if let personas = dataBase?.Personas {
                dataBase?.Personas?.append(persona)
            }else{
                dataBase?.Personas = [Persona]()
                dataBase?.Personas?.append(persona)
            }
            self.updateList()
        }
    }
    
    func updateList() {
        
        var arrayPersonas = [String]()
        for persona in dataBase!.Personas! {
            
            arrayPersonas.append(persona.nombre! + " " + persona.apellido!)
        }
        
        presenter!.updateObjects(objects: arrayPersonas)
    }
}   
