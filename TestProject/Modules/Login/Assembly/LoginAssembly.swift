//
//  LoginAssembly.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias LoginConfiguration = (LoginModuleInput) -> (Void)

final class LoginModuleAssembly {

    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: LoginConfiguration? = nil) -> UIViewController {
        // let viewModel = LoginViewModel()
        let view = LoginView()
        let hostingController = LoginHostingController(rootView: view)
        // hostingController.viewModel = viewModel
        // configuration?(viewModel)
        return hostingController
    }

}
