//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var topMovingCoin = [Coin]()
    @Published var error: Error?
    
    private var pageLimit = 100
    private var page = 1
    
    let BASE_URL = "https://api.coingecko.com/api/v3/coins/"
    
    var urlString: String {
        return "\(BASE_URL)markets?vs_currency=usd&order=market_cap_desc&per_page=\(pageLimit)&page=\(page)&price_change_percentage=24h"
    }
    
    init(){
        loadData()
    }
    
//    func fetchCoinData() {
////        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=en"
//        page = 0
//        let urlString = urlString
//
//        guard let url = URL(string: urlString) else {return}
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                print("DEBUG: Error \(error.localizedDescription)")
//                return
//            }
//
//            if let response = response as? HTTPURLResponse {
//                print("DEBUG: Response code \(response.statusCode)")
//
//            }
//
//            guard let data = data else {return}
//
//            do {
//                let coins = try JSONDecoder().decode([Coin].self, from: data)
//                DispatchQueue.main.async {
//                    self.coins.append(contentsOf: coins)
//
//                    self.configureTopMovingCoins()
//                }
//                print(("DEBBUG: Coins \(coins)"))
//
//            } catch let error {
//                print("DEBUG: Failed to decode with error \(error.localizedDescription)")
//
//            }
//        }
//        .resume()
//    }

}


extension HomeViewModel {
    
    @MainActor
    func fetchCoinsAsync() async  throws {

        do {
            guard let url = URL(string: urlString) else {
                print("DEBUG: Invalid URL")
                throw CoinError.invalidURL
            }
            
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse , response.statusCode == 200 else {throw CoinError.serverError}
            guard let coins = try? JSONDecoder().decode([Coin].self, from: data) else {throw CoinError.invalidData}
            self.coins.append(contentsOf: coins)
            self.configureTopMovingCoins()

        } catch {
            self.error = error
        }
            
    }
    
    
    func loadData(){
        Task(priority: .medium) {
            try await fetchCoinsAsync()
        }
    }
    
    
    func configureTopMovingCoins() {
        let topMovers = coins.sorted(by:{$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoin = Array(topMovers.prefix(5))
    }

}
