//
//  Company.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct Company: Identifiable, Decodable {
    let id = UUID()
    var companyName: String
    var departments: [Department]
    
    enum CodingKeys: String, CodingKey {
        case companyName = "company_name"
        case departments
    }
}

struct Companies: Decodable {
    var companies: [Company]
}
