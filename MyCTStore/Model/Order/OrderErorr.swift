//
//  OrderErorr.swift
//  MyCTStore
//
//  Created by parth visavadiya on 10/04/23.
//

import Foundation

struct OrderError: Decodable{
    var error: Bool
    var data: [OrderData]
}
