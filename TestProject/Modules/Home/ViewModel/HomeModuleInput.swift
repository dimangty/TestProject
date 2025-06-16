//
//  HomeModuleInput.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

/// Adapter struct for Home initial configuration through HomeModuleInput
struct HomeConfigData {

}

/// Protocol with public methods to configure Home from its parent module (usually implemented by this module's ViewModel)
protocol HomeModuleInput: AnyObject {

	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: HomeConfigData)

}
