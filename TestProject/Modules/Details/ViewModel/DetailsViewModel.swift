//
//  DetailsViewModel.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import Combine
import Foundation

final class DetailsViewModel: ObservableObject {

    @Published var item: Article
    private var networkService: NetworkService?
    
    required init() {
        networkService = Configurator.shared.serviceLocator.getService(type: NetworkService.self)
        item = networkService?.getItem(id: 1) ?? Article.shared
    }

    // MARK: - DetailsViewOutput methods
    func didLoad() {
        
    }

}

// MARK: - DetailsModuleInput methods
extension DetailsViewModel: DetailsModuleInput {

    func configure(data: DetailsConfigData) {

    }

}
