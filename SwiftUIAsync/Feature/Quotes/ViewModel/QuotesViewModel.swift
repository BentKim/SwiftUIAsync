//
//  QuotesViewModel.swift
//  SwiftUIAsync
//
//  Created by Taewoo Kim on 2022/03/22.
//

import Foundation

protocol QuotesViewModel: ObservableObject {
    func getRandomQuotes() async
}

@MainActor
final class QuotesViewModelImpl: QuotesViewModel{
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuotesService
    
    init(service: QuotesService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
