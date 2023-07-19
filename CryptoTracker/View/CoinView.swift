//
//  CoinView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

struct CoinView: View {
    var body: some View {
        HStack(spacing: 10){
            Text("1")
                .font(.callout)
                .padding(.trailing,2)
                .foregroundColor(.gray)
            Image("ethereum-logo")
                .resizable()
                .frame(width: 36,height: 36)
                .clipShape(Circle())
                
            
            VStack(alignment: .leading){
                Text("Ethereum")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("ETH")
                    .font(.callout)
            }
            Spacer()
            
            VStack(alignment: .trailing){
                Text("$1900")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("+2.3%")
                    .font(.callout)
                    .foregroundColor(.red)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct CoinView_Previews: PreviewProvider {
    static var previews: some View {
        CoinView()
    }
}
