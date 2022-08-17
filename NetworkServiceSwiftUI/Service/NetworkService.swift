//
//  NetworkService.swift
//  NetworkServiceSwiftUI
//
//  Created by Atil Samancioglu on 14.08.2022.
//

import Foundation

protocol NetworkService {
    func download(_ resourceName: String) async throws -> [User]
    var type : String { get }
}
