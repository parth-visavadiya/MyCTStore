//
//  APIManager.swift
//  MyCTStore
//
//  Created by Parth Visavadiya on 05/04/23.
//

import Foundation
import Alamofire

class APIManager {
    //URL
    // Method Type
    // Header
    // Parameter
    // Encoding Type
    
    func request(with url: String,
                 methodType: HTTPMethod = .get,
                 header: HTTPHeaders? = nil,
                 parameter: Parameters? = nil,
                 completionHandler: @escaping(Result<Data, APIError>) -> Void) {
        guard let url = URL(string: url) else {
            completionHandler(.failure(.urlDoesNotFound))
            return
        }
        
        AF.request(url, method: methodType,
                   parameters: parameter,
                   encoding: URLEncoding.default,
                   headers: header).responseData { response in
          
            guard let statusCode = response.response?.statusCode, (200...299).contains(statusCode)
            else {
                completionHandler(.failure(.invaildResponse))
                return
            }
            
            guard let data = response.data
            else {
                completionHandler(.failure(.dataNotFound))
                return
            }
            
            completionHandler(.success(data))
        }
    }
}

enum APIError: Error {
    case urlDoesNotFound
    case invaildResponse
    case dataNotFound
    case jsonNotparshed
}
