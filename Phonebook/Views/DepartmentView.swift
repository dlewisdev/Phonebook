//
//  DepartmentView.swift
//  Phonebook
//
//  Created by Danielle Lewis on 12/12/23.
//

import SwiftUI

struct DepartmentView: View {
    var departments: [Department]
    
    var body: some View {
        List(departments) { department in
            NavigationLink {
                EmployeeView(employees: department.employees)
            } label: {
                Text(department.departmentName)
            }
            
        }
    }
}

#Preview {
    DepartmentView(departments: [Department(departmentName: "iOS Development", employees: [Employee(name: "Danielle", position: "iOS Developer", email: "dlewisdev@dev.com", phone: "1-281-330-8004")])])
}
