//
//  HomeView.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        
        VStack {
            Text("Home")
            ScrollView {
                LazyVStack {
                    ForEach(0 ..< viewModel.items.count, id: \.self) { index in
                        let state = viewModel.items[index]
                        HomeItem(state: state)
                            .padding(.top, 8)
                            .onTapGesture {
                                viewModel.tapArticle(state)
                            }
                    }
                }
            }.padding(.horizontal, 16)
        }.navigationBarHidden(true)
        .onAppear() {
            viewModel.didLoad()
        }
        .navigation(isActive: $viewModel.isShowDetails,
                    id: DetailsView.navigationID) {
            DetailsView()
        }
        
    }
    
}

#Preview {
    HomeView()
}
