//
//  ProfileView.swift
//  SOPPIOS
//
//  Created by Omer Guler on 2/11/2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser {
            List {
                Section {
                    HStack {
                        Text(user.initials)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        VStack {
                            Text(user.email)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                                .accentColor(.gray)
                        }
                    }
                    
                }
                
                Section("General") {
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                }
                
                Section("Account") {
                    Button {
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                    }
                    
                    Button {
                        print("Delete account...")
                    } label: {
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
