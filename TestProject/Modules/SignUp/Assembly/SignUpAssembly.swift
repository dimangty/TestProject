//
//  SignUpAssembly.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias SignUpConfiguration = (SignUpModuleInput) -> (Void)

final class SignUpModuleAssembly {

    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: SignUpConfiguration? = nil) -> UIViewController {
        // let viewModel = SignUpViewModel()
        let view = SignUpView()
        let hostingController = SignUpHostingController(rootView: view)
        // hostingController.viewModel = viewModel
        // configuration?(viewModel)
        return hostingController
    }

}
