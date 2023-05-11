//
//  OrderViewModel.swift
//  MyCTStore
//
//  Created by parth visavadiya on 10/04/23.
//

import Foundation
import Alamofire

class OrderViewModel{
    private(set) var arrOrderDetalis: [OrderDataTypeViewModel] = []
    private let apiManaGer: APIManager = APIManager()
    
    
    func fachOrderRespons(comlition: @escaping(Result<(), Error>) -> Void){
        apiManaGer.request(with: APIEndPoint.order.url, methodType: .get) { repson in
            switch repson {
            case .success(let data):
                do{
                    let orderPageAPIResponse = try JSONDecoder().decode(OrderError.self, from: data)
                    print(orderPageAPIResponse)
                    self.arrOrderDetalis = orderPageAPIResponse.data.map {OrderDataTypeViewModel(orderData: $0)}
                    comlition(.success(()))
                }catch{
                    print(error)
                    comlition(.failure(APIError.jsonNotparshed))
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

extension OrderViewModel{
    
    func numberOfSection() -> Int {
        return arrOrderDetalis.count
    }
    
    func numberOfRow() -> Int { return 1 }
    
}
