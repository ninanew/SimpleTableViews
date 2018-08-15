//
//  ViewController.swift
//  TableView
//
//  Created by Kristina Neuwirth on 8/1/18.
//  Copyright © 2018 Kristina Neuwirth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var items = ["peaches", "pears", "apricots", "figs", "dates", "apples", "plums", "nectarines", "grapes", "melons"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "cell") {
        
                cell.textLabel?.text = self.items[indexPath.row]
        
                return cell 
        }
           return UITableViewCell()
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        return  UITableViewCellEditingStyle.insert
//    }
//
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            items.remove(at: indexPath.row)
            tableView.reloadData()
            
//            var deleteAction = UITableViewRowAction(style: delete, title: "Delete") { (<#UITableViewRowAction#>, <#IndexPath#>) in
//
//
//            }
            
//            return deleteAction
//        } else if editingStyle == UITableViewCellEditingStyle.insert {
 //           items.insert(IndexPath, at: indexPath.row)
 //           tableView.reloadData()
            
        }
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell at", indexPath.row)

    }
    
}

