//
//  ViewController.swift
//  Todoey
//
//  Created by Mantas Skeiverys on 17/01/2019.
//  Copyright © 2019 Mantas Skeiverys. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["aaaaaaa", "bbbbbb", "ccccccc"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //test comment
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

