//
//  ViewController.swift
//  MyPlaces
//
//  Created by Ruslan Ismayilov on 7/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var listView: UITableView!
    
//    let restaurantNames = ["GEN", "Darda Seafood", "Kazoo", "True Food","Kabil", "Sultan Kebab", "California Wet Burrito"]
    let places = [Place(name: "GEN", location: "Fremont", type: "Restaurant", image: "GEN")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // Mark Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text =  places[indexPath.row].type
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
    

    


}

