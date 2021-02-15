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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = places[indexPath.row]
        cell.imageView?.image = UIImage(named: places[indexPath.row])
        return cell
        
    }
}
