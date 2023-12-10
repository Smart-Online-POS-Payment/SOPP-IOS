//
//  MainScreenView.swift
//  SOPPIOS
//
//  Created by Omer Guler on 10/12/2023.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    Button(action: {
                        print("Profile View Clicked")
                    }, label: {
                        Text("Profile")
                    })
                    .padding()
                    Spacer()
                    Button(action: {
                        print("Logout Clicked")
                    }, label: {
                        Text("Logout")
                    })
                    .padding()
                }
                
                
                Spacer()
                
                VStack {
                    Text("Wallet")
                    Text("Balance: Otl")
                        
                    HStack {
                        NavigationLink(destination: QRReaderView()) {
                            Text("QR Payment")
                                .frame(width: 80, height: 80)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(10)
                        
                        
                        NavigationLink(destination: UploadMoneyView()) {
                            Text("Upload Money")
                                .frame(width: 80, height: 80)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(10)
                    }
                    
                    NavigationLink(destination: PaymentsView()) {
                        Text("Payments")
                            .frame(width: 80, height: 80)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(10)
                    
                    
                    
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    MainScreenView()
}
