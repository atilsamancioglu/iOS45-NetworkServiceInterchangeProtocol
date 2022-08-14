//
//  Localservice.swift
//  NetworkServiceSwiftUI
//
//  Created by Atil Samancioglu on 14.08.2022.
//

import Foundation

class Localservice: NetworkService {
    
    func download(_ resourceName: String) async throws -> [User] {
        
        guard let path = Bundle.main.path(forResource: resourceName, ofType: "json") else {
            fatalError("Resource file \(resourceName) not found!")
        }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        let userModel = try JSONDecoder().decode([User].self, from: data)
        return userModel
    }
    
}
