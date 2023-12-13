//
//  Department.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct Department: Identifiable, Decodable {
    let id = UUID()
    var departmentName: String
    var employees: [Employee]
    
    enum CodingKeys: String, CodingKey {
        case departmentName = "department_name"
        case employees
    }
}
