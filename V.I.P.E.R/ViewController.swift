//
//  ViewController.swift
//  V.I.P.E.R
//
//  Created by iAcisclo on 29/10/14.
//  Copyright (c) 2014 iAcisclo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    var presenter:Presenter?
    
    @IBAction func add(sender: AnyObject) {

        presenter?.addNewObjectWithData(nombre: self.nombre.text, apellido: self.apellido.text)

        self.presentingViewController?.dismissViewControllerAnimated(true, completion:nil)

    }
    
    @IBAction func cancel(sender: AnyObject) {
        
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
}