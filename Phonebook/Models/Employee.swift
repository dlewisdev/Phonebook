//
//  Employee.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct Employee: Identifiable, Decodable {
    let id = UUID()
    var name: String
    var position: String
    var email: String
    var phone: String
}
