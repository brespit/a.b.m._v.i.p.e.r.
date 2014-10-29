//
//  interactorProtocol.swift
//  V.I.P.E.R
//
//  Created by iAcisclo on 28/10/14.
//  Copyright (c) 2014 iAcisclo. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    
    func addNewPersonWithData(#nombre:String, apellido:String)
}

protocol InteractorProtocolOutput {
        
    func updateObjects(#objects:[String])
    
}