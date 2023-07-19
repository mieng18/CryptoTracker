//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    var body: some View {
        HStack{
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .padding(.trailing,2)
                .foregroundColor(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .clipShape(Circle())
                
            
            VStack(alignment: .leading,spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text(coin.symbol)
                    .font(.caption)
                    .padding(.leading,6)

            }
            .padding(.leading,2)
             
            Spacer()
            
            VStack(alignment: .trailing,spacing: 4){
                Text("\(coin.currentPrice)")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .foregroundColor(.red)
            }
        }
        .padding(.vertical,4)
        .frame(maxWidth: .infinity)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView(coin: <#Coin#>)
//    }
//}
