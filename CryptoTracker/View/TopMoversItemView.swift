//
//  TopMoversItemView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI
import Kingfisher


struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading) {
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundColor(.gray)
                .clipShape(Circle())
                .padding(.bottom,8)
                
            
            HStack(spacing:2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percent changes
            Text("\(coin.priceChangePercentage24H)")
                .font(.callout)
                .foregroundColor(.green)
            
            
        }
        .frame(width: 120,height: 120)
        
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth:2)
        )
        .padding()
        
        
    }
}
//
//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
