//
//  MainViewController.swift
//  Places
//
//  Created by Альберт on 15.02.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.nameLabel.text = places[indexPath.row].name
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace .frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        return cell
    }
    
    @IBAction func exitAction(_ segue: UIStoryboardSegue) {
        
    }
}
