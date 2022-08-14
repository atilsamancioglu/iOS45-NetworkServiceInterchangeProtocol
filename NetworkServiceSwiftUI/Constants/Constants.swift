//
//  Constants.swift
//  NetworkServiceSwiftUI
//
//  Created by Atil Samancioglu on 14.08.2022.
//

import Foundation

struct Constants {
    
    struct UserResources {
        
        //https://jsonplaceholder.typicode.com/users
        static let baseUrl = "jsonplaceholder.typicode.com"
        static let usersExtension = "users"
        
        static func resource(for resourceName: String) -> URL? {
            
            var components = URLComponents()
            components.scheme = "https"
            components.percentEncodedHost = baseUrl
            components.path = "/\(resourceName)"
            return components.url
            
        }
        
    }
    
    struct Urls {
        static let baseUrl = "https://jsonplaceholder.typicode.com"
        static let usersExtension = "\(baseUrl)/users"
    }
    
}
