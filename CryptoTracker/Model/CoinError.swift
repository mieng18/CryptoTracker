//
//  CoinError.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import Foundation


enum CoinError: Error,LocalizedError {
    case invalidURL
    case serverError
    case invalidData
    case unknown(Error)
    
    
    var errorDescription: String?{
        switch self {
        case .invalidURL:
            return "The URL was invalid, please try again later"
        case .serverError:
            return "There was an error with the server. Please try again later"
        case .invalidData:
            return "The coin data is incvalid. Please try again later"
        case .unknown(let error):
            return error.localizedDescription
        }
    }
}
