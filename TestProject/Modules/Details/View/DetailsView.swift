//
//  DetailsView.swift
//  ios
//
//  Created by yes on 16/06/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct DetailsView: View {

    @StateObject private var viewModel = DetailsViewModel()

    var body: some View {
        VStack {
            
            VStack(spacing: 8) {
                AsyncImage(url: URL(string: viewModel.item.urlToImage ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    EmptyView()
                }
                .frame(height: 250)
                .cornerRadius(22)
                
                details
                Spacer()
            }.padding(.horizontal, 16)
            
        }
        
    }
    
    var details: some View {
        VStack {
            HStack{
                Text(viewModel.item.publishedAt ?? "")
                Spacer()
            }
            HStack {
                Text(viewModel.item.title ?? "")
                Spacer()
            }.padding(.vertical, 16)
            
            HStack {
                Text(viewModel.item.text ?? "")
                    .lineLimit(5)
                Spacer()
            }
        }.padding(.top, 16)
    }

}

#Preview {
    DetailsView()
}
