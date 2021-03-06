//
//  pictographDisplayCell.swift
//  Class declaration of pictographDisplayCell.
//
//  CMPT 275 Fall 2017 - Group 02: The Night Owls
//  Created by Yagnik Vadher on 11/2/17.
//
//  Copyright © 2017 ksd8. All rights reserved.
//

import Foundation

import UIKit

protocol pictographicCellDelegate: class {
    func heartTapped(cell : pictographDisplayCell)
}

class pictographDisplayCell: UICollectionViewCell
{
    weak var delegate: pictographicCellDelegate?
    
    @IBOutlet weak var pictographImg: UIImageView!
    
    @IBOutlet weak var pictographLable: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    
    var isLiked: Bool = false
    
    var imageName: String! {
        didSet {
            pictographImg.image = UIImage(named: imageName)
            pictographImg.layer.borderWidth = 0.5
            pictographImg.layer.masksToBounds = true
            pictographImg.layer.cornerRadius = 10
        }
    }
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
        delegate?.heartTapped(cell: self)
    }
    
}

