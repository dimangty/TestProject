//
//  Article.swift
//  TestProject
//
//  Created by dmitry on 16/6/2568 BE.
//

import Foundation

struct Article: Codable {
    static let shared = Article(author: "Author",
                                title: "Title",
                                text: "Text",
                                url: "http://www.google.com",
                                urlToImage: "https://www.anekdot.ru/i/logo.png",
                                publishedAt: "2025-06-13T21:00:00Z")
    let author: String?
    let title: String?
    let text: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}
