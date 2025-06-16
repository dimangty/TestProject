//
//  ValidationService.swift
//  TestProject
//
//  Created by Дмитрий Быков on 16.06.2025.
//

class ValidationService {
    
    func validateEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return email.range(of: emailRegex, options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    func validatePassword(_ password: String) -> Bool {
        return password.count >= 8
    }
    
    func validateName(_ name: String) -> Bool {
        return !name.isEmpty
    }
}
