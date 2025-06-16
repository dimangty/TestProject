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
                            urlToImage: "https://www.anekdot.ru/i/logo.png",
                            publishedAt: "2025-06-13T21:00:00Z"))
        
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "https://www.anekdot.ru/i/logo.png",
                            publishedAt: "2025-06-13T21:00:00Z"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "https://www.anekdot.ru/i/logo.png",
                            publishedAt: "2025-06-13T21:00:00Z"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "https://www.anekdot.ru/i/logo.png",
                            publishedAt: "2025-06-13T21:00:00Z"))
        
        result.append(.init(author: "Author",
                            title: "Test title",
                            text: "Text",
                            url: "http://www.google.com",
                            urlToImage: "https://www.anekdot.ru/i/logo.png",
                            publishedAt: "2025-06-13T21:00:00Z"))
        
        
        return result
    }
    
    func getItem(id: Int) -> Article? {
        return .init(author: "Author",
                     title: "Test title",
                     text: "В 2025 году абитуриенты, поступающие на бакалавриат и специалитет, могут рассчитывать на дополнительные баллы за личные достижения, обнадёжила будущих студентов проректор по учебной работе РГСУ Янина Шимановская. В частности, по её словам, 10 баллов получат",
                     url: "http://www.google.com",
                     urlToImage: "https://www.anekdot.ru/i/logo.png",
                     publishedAt: "2025-06-13T21:00:00Z")
    }
}
