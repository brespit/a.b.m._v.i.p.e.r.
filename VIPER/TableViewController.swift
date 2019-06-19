//
//  TableViewController.swift
//  VIPER
//
//  Created by Flavio Leite on 19/06/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, viewProtocol {
    
    var presenter:Presenter?
    var objects:[String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonBar = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: Selector(("addNewObject")))
        self.navigationItem.rightBarButtonItem = buttonBar
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects?.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = objects?[indexPath.row];
        return cell
    }

    @objc func addNewObject() {
        presenter!.addNewObject()
    }
    
    
    func setListWithObjects(objects: [String]) {
        self.objects = objects
        self.tableView.reloadData()
    }


    
 


}
