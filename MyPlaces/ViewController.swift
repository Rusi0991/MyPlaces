//
//  ViewController.swift
//  MyPlaces
//
//  Created by Ruslan Ismayilov on 7/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var listView: UITableView!
    
    let restaurantNames = ["GEN", "Darda Seafood", "Kazoo", "True Food","Kabil", "Sultan Kebab", "California Wet Burrito"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // Mark Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        return cell
    }
    
    // Mark : -Table View Delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

    


}

