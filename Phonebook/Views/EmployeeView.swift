//
//  AttractionView.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct EmployeeView: View {
    var employees: [Employee]
    
    var body: some View {
        List(employees) { employee in
            VStack(alignment: .leading) {
                Text(employee.name)
                    .font(.title).bold()
                Text(employee.position)
                    .fontWeight(.semibold)
                
                
                Button {
                    if let url = URL(string: "mailto:\(employee.email)") {
                        
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        }
                    }
                    
                } label: {
                    HStack {
                        Image(systemName: "envelope")
                        Text(employee.email)
                    }
                }
                .buttonStyle(.borderless)
               
                
                Button {
                    if let url = URL(string: "tel:\(employee.phone)") {
                        
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        }
                    
                    }
                } label: {
                    HStack {
                        Image(systemName: "phone")
                        Text(employee.phone)
                    }
                }
                .buttonStyle(.borderless)
            }
        }
    }
}

#Preview {
    EmployeeView(employees: [Employee(name: "Danielle", position: "iOS Developer", email: "dlewisdev@dev.com", phone: "1-281-330-8004")])
}
