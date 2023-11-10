//
//  SOPPIOSApp.swift
//  SOPPIOS
//
//  Created by Omer Guler on 2/11/2023.
//

import SwiftUI
import Firebase

@main
struct SOPPIOSApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
