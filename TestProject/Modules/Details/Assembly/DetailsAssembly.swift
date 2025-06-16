//
//  DetailsAssembly.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias DetailsConfiguration = (DetailsModuleInput) -> (Void)

final class DetailsModuleAssembly {

    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: DetailsConfiguration? = nil) -> UIViewController {
        // let viewModel = DetailsViewModel()
        let view = DetailsView()
        let hostingController = DetailsHostingController(rootView: view)
        // hostingController.viewModel = viewModel
        // configuration?(viewModel)
        return hostingController
    }

}
