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

    @Published var item: Article = .shared
    @Injected private var networkService: NetworkService?
    
    required init() {
        
    }

    // MARK: - DetailsViewOutput methods
    func didLoad() {
        item = networkService?.getItem(id: 1) ?? Article.shared
    }

}

// MARK: - DetailsModuleInput methods
extension DetailsViewModel: DetailsModuleInput {

    func configure(data: DetailsConfigData) {

    }

}
