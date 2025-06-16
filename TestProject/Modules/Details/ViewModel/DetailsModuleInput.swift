//
//  DetailsModuleInput.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

/// Adapter struct for Details initial configuration through DetailsModuleInput
struct DetailsConfigData {

}

/// Protocol with public methods to configure Details from its parent module (usually implemented by this module's ViewModel)
protocol DetailsModuleInput: AnyObject {

	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: DetailsConfigData)

}
