//
//  HomeAssembly.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import UIKit

// For module inputs and outputs
typealias HomeConfiguration = (HomeModuleInput) -> (Void)

final class HomeModuleAssembly {

    /// Assembles Module components and returns a target controller
    ///
    /// - Parameter configuration: optional configuration closure called by module owner
    /// - Returns: Assembled module's ViewController
    func assemble(_ configuration: HomeConfiguration? = nil) -> UIViewController {
        // let viewModel = HomeViewModel()
        let view = HomeView()
        let hostingController = HomeHostingController(rootView: view)
        // hostingController.viewModel = viewModel
        // configuration?(viewModel)
        return hostingController
    }

}
