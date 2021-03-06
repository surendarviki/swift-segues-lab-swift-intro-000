//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    
    
    var animalList = ["Dog",
        "Cat",
        "Mouse",
        "Hamster",
        "Bunny",
        "Panda",
        "Lion",
        "Pig",
        "Frog",
        "Octopus"]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animalName = animalList[indexPath.row]
        
        cell.textLabel?.text = animalName
        
        return cell
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "AnimalDetailView" {return}
        
        if let vcDest = segue.destination as? AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            
                vcDest.animal = animalList[(indexPath as NSIndexPath).row]
        
        }
        
        
        
    }
    
    
}
