//
//  CustomCell.swift
//  Places
//
//  Created by Альберт on 15.02.2021.
//

import UIKit
import Cosmos

class CustomCell: UITableViewCell {

    @IBOutlet weak var cosmosView: CosmosView! {
        didSet {
            cosmosView.settings.updateOnTouch = false
        }
    }
    @IBOutlet weak var imageOfPlace: UIImageView! {
        didSet {
          imageOfPlace.layer.cornerRadius = imageOfPlace .frame.size.height / 2
          imageOfPlace.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    
}
