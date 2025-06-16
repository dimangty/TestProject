//
//  LoginView.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI
import SUINavigation

struct LoginView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email", text: $viewModel.email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
            
            Button("Login") {
                viewModel.loginTapped()
            }.disabled(!viewModel.isValid)
            
            Button("Sign UP") {
                viewModel.signUPTapped()
            }
            
            Spacer()
        }.padding(.horizontal, 16)
        .navigation(isActive: $viewModel.isShowHome,
                    id: HomeView.navigationID) {
            HomeView()
        }
        .navigation(isActive: $viewModel.isShowSignUP,
                    id: SignUpView.navigationID) {
            SignUpView()
        }
    }
    
}

#Preview {
    LoginView()
}
