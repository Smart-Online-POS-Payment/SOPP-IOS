//
//  RegisterView.swift
//  SOPPIOS
//
//  Created by Omer Guler on 2/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack {
            Image("valensas")
                .resizable()
                .scaledToFit()
                .padding(.vertical, 32)
            
            VStack(spacing: 24){
                InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                    .textInputAutocapitalization(.none)
                
                InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Button {
                Task {
                    try await viewModel.createUser(withEmail: email, password: password, fullName: "mockfullname")
                }
            } label: {
                    Text("SIGN UP")
                    .foregroundStyle(Color.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already a member?")
                    Text("Sign in")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .font(.system(size: 20))
            }
        }
    }
}

#Preview {
    RegisterView()
}
