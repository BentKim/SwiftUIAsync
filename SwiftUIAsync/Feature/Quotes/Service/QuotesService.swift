//
//  QuotesService.swift
//  SwiftUIAsync
//
//  Created by Taewoo Kim on 2022/03/22.
//

import Foundation

protocol QuotesService {
    func fetchRandomQuotes() async throws -> [Quote]
}

final class QuotesServiceImpl: QuotesService {
    func fetchRandomQuotes() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
