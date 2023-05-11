//
//  OrderTableViewCell.swift
//  MyCTStore
//
//  Created by parth visavadiya on 10/04/23.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    //MARK: - IBOutlet
    @IBOutlet weak var orderId: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var vendorImg: UIImageView!
    @IBOutlet weak var vendorName: UILabel!
    @IBOutlet weak var totalPrince: UILabel!
    @IBOutlet weak var stats: UILabel!
    @IBOutlet weak var reOrder: UIButton!
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
