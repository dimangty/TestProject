//
//  SignUpView.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct SignUpView: View {

    @StateObject private var viewModel = SignUpViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Sign UP")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email", text: $viewModel.email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
            
            TextField("Name", text: $viewModel.name)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
            
            Button("Sign UP") {
                viewModel.signUpTapped()
            }.disabled(!viewModel.isValid)
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .navigation(isActive: $viewModel.isShowHome,
                    id: HomeView.navigationID) {
           HomeView()
        }
    }

}

#Preview {
    SignUpView()
}
