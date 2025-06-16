//
//  HomeItem.swift
//  TestProject
//
//  Created by Дмитрий Быков on 16.06.2025.
//

import SwiftUI

struct HomeItem: View {
    let state: Article
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.gray)
                .cornerRadius(22)
            
           
            
            VStack {
                AsyncImage(url: URL(string: state.urlToImage ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    EmptyView()
                }
                .frame(height: 132)
                .cornerRadius(22, corners: [.topLeft, .topRight])
                VStack {
                    HStack{
                        Text(state.publishedAt ?? "")
                        Spacer()
                    }
                    HStack {
                        Text(state.title ?? "")
                        Spacer()
                    }.padding(.vertical, 16)
                    
                    HStack {
                        Text(state.text ?? "")
                            .lineLimit(2)
                        Spacer()
                    }
                }.padding(.bottom, 8)
                 .padding(.horizontal, 12)
                
                
            }
        }.fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    HomeItem(state: Article.shared)
}
