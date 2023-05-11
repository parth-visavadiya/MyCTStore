//
//  AppEndPoints.swift
//  MyCTStore
//
//  Created by Parth Visavadiya on 05/04/23.
//

import Foundation

enum APIEndPoint {
    case getArea
    // case getArea(cityId: Int)
    case getCity
    case homepage
    case order
    
    var url: String {
        switch self {
//        case .getArea:
//            return "\(Config.baseURL)/get_area/\(cityId)"
        case .getArea:
            return "\(Config.baseURL)/get_area"
        case .getCity:
            return "\(Config.baseURL)/get_city"
        case .homepage:
            return "\(Config.baseURL)/homepage"
        case .order:
            return "\(Config.baseURL)/get_order/8"
        }
    }
}
