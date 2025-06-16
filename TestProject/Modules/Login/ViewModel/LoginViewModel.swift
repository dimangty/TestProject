//
//  LoginViewModel.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import Combine
import Foundation

final class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isValid: Bool = false
    @Published var isShowHome: Bool = false
    @Published var isShowSignUP: Bool = false
    
    @Injected private var validationService: ValidationService?
    
    private var cancellables = Set<AnyCancellable>()
    
    required init() {
        observe()
    }

    // MARK: - LoginViewOutput methods
    func didLoad() {
        
    }
    
    func observe() {
        $email.sink { value in
            self.validate()
        }.store(in: &cancellables)
        
        $password.sink { value in
            self.validate()
        }.store(in: &cancellables)
    }
    
    private func validate() {
        if validationService?.validateEmail(email) ?? false &&
            validationService?.validatePassword(password) ?? false {
            isValid = true
        } else {
            isValid = false
        }
    }
    
    func loginTapped() {
        isShowHome.toggle()
    }
    
    func signUPTapped() {
        isShowSignUP.toggle()
    }

}

// MARK: - LoginModuleInput methods
extension LoginViewModel: LoginModuleInput {

    func configure(data: LoginConfigData) {

    }

}
