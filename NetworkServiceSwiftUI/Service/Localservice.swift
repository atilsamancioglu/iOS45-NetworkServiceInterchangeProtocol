//
//  Localservice.swift
//  NetworkServiceSwiftUI
//
//  Created by Atil Samancioglu on 14.08.2022.
//

import Foundation

class Localservice : NetworkService {
    var type: String = "Localservice"

    func download(_ resource: String) async throws -> [User] {
        
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            fatalError("Resource not found")
        }
        
        let data = try Data(contentsOf: URL(filePath: path))
        
        return try JSONDecoder().decode([User].self, from: data)
        
    }
    
}
