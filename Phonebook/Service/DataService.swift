//
//  DataService.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import Foundation

struct DataService {
    
    func getData() -> [Company] {
        
        if let url = Bundle.main.url(forResource: "PBData", withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let companies = try decoder.decode(Companies.self, from: data)
                    return companies.companies
                } catch {
                    print("Error parsing JSON: \(error)")
                }
                
            } catch {
                print("Error reading file: \(error)")
            }
        }
        
        return [Company]()
        
        
    }
}
