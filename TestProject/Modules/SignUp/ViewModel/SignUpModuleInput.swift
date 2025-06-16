//
//  SignUpModuleInput.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

/// Adapter struct for SignUp initial configuration through SignUpModuleInput
struct SignUpConfigData {

}

/// Protocol with public methods to configure SignUp from its parent module (usually implemented by this module's ViewModel)
protocol SignUpModuleInput: AnyObject {

	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: SignUpConfigData)

}
