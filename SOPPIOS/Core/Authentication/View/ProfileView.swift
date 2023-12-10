//
//  ProfileView.swift
//  SOPPIOS
//
//  Created by Omer Guler on 2/11/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var tckn: String = ""
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var birthYear: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = ""
    @State private var openAdress: String = ""
    @State private var city: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Verify User")) {
                TextField("TCKN", text: $tckn)
                TextField("Name", text: $name)
                TextField("Surname", text: $surname)
                TextField("Email", text: $email)
                TextField("Phone Number", text: $phoneNumber)
                TextField("Birth Year", text: $birthYear)
                TextField("Open Adress", text: $openAdress)
                TextField("City", text: $city)
                
            }
            
            Button(action: {
                print("Verify User clicked")
            }) {
                Text("Verify User")
            }
            
            
        }
    }
}

#Preview {
    ProfileView()
}
