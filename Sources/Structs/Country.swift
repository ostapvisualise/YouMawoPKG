//
//  File.swift
//  
//
//  Created by Admin on 07.04.2021.
//

import Foundation

public struct CountryDTO: Codable {
    var id: String
    var code: String
    var country: String

    public init(_ dictionary: [String: Any]) {
        id = dictionary["id"] as? String ?? ""
        code = dictionary["code"] as? String ?? ""
        country = dictionary["country"] as? String ?? ""
    }
    
    public init (id: String, code: String, country: String) {
        self.id = id
        self.code = code
        self.country = country
    }
}
