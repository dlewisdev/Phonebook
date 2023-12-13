//
//  CompanyView.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct CompanyView: View {
    @State var companies = [Company]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(companies) { company in
                    NavigationLink {
                        DepartmentView(departments: company.departments)
                    } label: {
                        Text(company.companyName)
                    }
                }
            }
            .onAppear {
                companies = dataService.getData()
            }
            .navigationTitle("Companies")
        }
    }
}

#Preview {
    CompanyView()
}
