//
//  NetworkService.swift
//  TestProject
//
//  Created by dmitry on 16/6/2568 BE.
//

import Foundation

class NetworkService {
    func getArticles() -> [Article] {
        var result: [Article] = []
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "http://www.google.com",
                            publishedAt: "22/01/2222",
                            content: "Content"))
        
        return result
    }
}
