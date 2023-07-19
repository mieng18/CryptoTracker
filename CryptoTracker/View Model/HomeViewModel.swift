//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import Foundation
import UIKit

class HomeViewModel: ObservableObject {
    
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
                
            }
            
            guard let data = data else {return}
            print("DEBUG: Data \(data)")
        }
    }
    
}
