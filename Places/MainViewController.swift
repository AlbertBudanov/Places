//
//  MainViewController.swift
//  Places
//
//  Created by Альберт on 15.02.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let places = ["Шаурма От Души",
                              "Рис",
                              "ДОДО-Пицца",
                              "Дар-Пицца",
                              "Уни-Пицца",
                              "Цыпа-Гриль",
                              "KFC",
                              "McDonald's",
                              "Патрик & Мари"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.nameLabel.text = places[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
