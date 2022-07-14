//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Ruslan Ismayilov on 7/13/22.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK:  Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            
        } else {
            view.endEditing(true)
        }
    }
}
// MARK:  Text Field Delegate

extension NewPlaceViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

