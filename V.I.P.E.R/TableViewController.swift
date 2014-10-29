//
//  TableViewController.swift
//  V.I.P.E.R
//
//  Created by iAcisclo on 28/10/14.
//  Copyright (c) 2014 iAcisclo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,viewProtocol {
    
    var presenter:Presenter?
    var objects = [String]()
    

    override func viewDidLoad() {

        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: Selector("addNewObject"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel.text = objects[indexPath.row];
        return cell
    }

    // MARK: - Actions

    func addNewObject() {
        
        presenter!.addNewObject()
    }
    
    // MARK: - viewProtocol

    func setListWithObjects(#objects: [String]) {
        
        self.objects = objects
        self.tableView.reloadData()
    }
    
}
