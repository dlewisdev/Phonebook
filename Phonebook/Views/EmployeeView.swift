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
                    
                } label: {
                    Text(employee.email)
                }
                
                Text(employee.phone)
            }
        }
    }
}

#Preview {
    EmployeeView(employees: [Employee(name: "Danielle", position: "iOS Developer", email: "dlewisdev@dev.com", phone: "1-281-330-8004")])
}
