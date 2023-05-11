//
//  AreaAPIResponse.swift
//  MyCTStore
//
//  Created by Parth Visavadiya on 05/04/23.
//

import Foundation

struct AreaAPIResponse: Decodable{
    var error: Bool
    var data: [Area]
}
