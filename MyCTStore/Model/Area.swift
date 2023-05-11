//
//  Area.swift
//  MyCTStore
//
//  Created by Parth Visavadiya on 05/04/23.
//

import Foundation

struct Area: Decodable{
    var areaName: String
    var stats: String
    
    enum CodingKeys: String, CodingKey {
        case stats
        case areaName = "area_name"
    }
}
