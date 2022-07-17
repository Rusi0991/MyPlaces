//
//  ViewController.swift
//  MyPlaces
//
//  Created by Ruslan Ismayilov on 7/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
//    let restaurantNames = ["GEN", "Darda Seafood", "Kazoo", "True Food","Kabil", "Sultan Kebab", "California Wet Burrito"]
    var places = [Place(name: "GEN", location: "Fremont", type: "Restaurant", restaurantImages: "GEN")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // Mark Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        let place = places[indexPath.row]
        
        cell.nameLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text =  place.type
        
        if place.image == nil {
            cell.imageOfPlace.image = UIImage(named: place.restaurantImages!)
        } else {
            cell.imageOfPlace.image = place.image
        }
        
        
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
    @IBAction func unwindSegue(segue : UIStoryboardSegue){
        guard let newPlaceVC = segue.source as? NewPlaceViewController else {return}
        newPlaceVC.saveNewPlace()
        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }

    


}

