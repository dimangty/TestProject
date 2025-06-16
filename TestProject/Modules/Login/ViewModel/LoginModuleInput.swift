//
//  LoginModuleInput.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

/// Adapter struct for Login initial configuration through LoginModuleInput
struct LoginConfigData {

}

/// Protocol with public methods to configure Login from its parent module (usually implemented by this module's ViewModel)
protocol LoginModuleInput: AnyObject {

	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: LoginConfigData)

}
