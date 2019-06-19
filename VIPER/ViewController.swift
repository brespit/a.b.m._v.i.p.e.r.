//
//  ViewController.swift
//  VIPER
//
//  Created by Flavio Leite on 19/06/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    var presenter:Presenter?

    @IBAction func cancel(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func add(_ sender: Any) {
        presenter?.addNewObjectWithData(name: self.nombre.text!, surname: self.apellido.text!)
        self.presentingViewController?.dismiss(animated: true, completion:nil)
    }
    
    
}
