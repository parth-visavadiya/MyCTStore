//
//  VendorCollectionViewCell.swift
//  MyCTStore
//
//  Created by Parth Visavadiya on 05/04/23.
//

import UIKit
import Cosmos

class VendorCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlet
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var openAndCloseLabel: UILabel!
    @IBOutlet weak var rupeesAndDeliveryLabel: UILabel!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var storeImageView: UIImageView!
    
    @IBOutlet weak var ratingView: CosmosView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //ratingView.rating = 4
    }

}
