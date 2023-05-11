//
//  OrderDataTypeViewModel.swift
//  MyCTStore
//
//  Created by parth visavadiya on 10/04/23.
//

import Foundation

struct OrderDataTypeViewModel{
    
    private let orderData: OrderData
    
    init(orderData: OrderData) {
        self.orderData = orderData
    }
    
    func getOrderId() -> String { return orderData.orderId }
    func getVendorName() -> String { return orderData.vendorName }
    func getVendorImage() -> String {
        return Config.baseURLForImage + (orderData.vendorImage.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
    func getTotalPrince() -> String {return orderData.totalPrince}
    func getDateTime() -> String {return orderData.dateTime}
    func getStats() -> String {return orderData.stats}
}
