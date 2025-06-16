//
//  HomeViewModel.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import Combine
import Foundation

final class HomeViewModel: ObservableObject {

    @Published var items: [Article] = []
    @Published var isShowDetails: Bool = false
    
    var selectedArticle: Article = Article.shared
    
    @Injected private var networkService: NetworkService?
    
    required init() {
        
    }

    // MARK: - HomeViewOutput methods
    func didLoad() {
        items = networkService?.getArticles() ?? []
    }
    
    func tapArticle(_ article: Article) {
        selectedArticle = article
        isShowDetails = true
    }

}

// MARK: - HomeModuleInput methods
extension HomeViewModel: HomeModuleInput {

    func configure(data: HomeConfigData) {

    }

}
