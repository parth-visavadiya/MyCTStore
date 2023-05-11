//
//  OrderData.swift
//  MyCTStore
//
//  Created by parth visavadiya on 10/04/23.
//

import Foundation

struct OrderData: Decodable{
    var orderId: String
    var totalPrince: String
    var dateTime: String
    var stats: String
    var vendorName: String
    var vendorImage: String
    
    enum CodingKeys: String, CodingKey {
        case stats
        case orderId = "order_id"
        case dateTime = "date_time"
        case vendorName = "vname"
        case vendorImage = "vimage"
        case totalPrince = "tprice"
    }
}
