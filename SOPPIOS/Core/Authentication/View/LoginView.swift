//
//  LoginView.swift
//  SOPPIOS
//
//  Created by Omer Guler on 2/11/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    //@EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer()
                
                // form fields
                VStack(spacing: 24){
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .textInputAutocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                NavigationLink(destination: MainScreenView()){
                    Text("Sign in")
                        .padding()
                }
                
                Spacer()
                
                // sign up button
                NavigationLink {
                    RegisterView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("Not a member?")
                        Text("Join SOPP")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 20))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
