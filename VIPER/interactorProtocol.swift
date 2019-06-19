//
//  InputOutput.swift
//  VIPER
//
//  Created by Flavio Leite on 19/06/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    
    func addNewPersonWithData(nombre:String, apellido:String)
}

protocol InteractorProtocolOutput {
    
    func updateObjects(objects:[String])
}
