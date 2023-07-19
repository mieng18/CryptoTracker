//
//  AllCoinsView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(spacing: 0){
            VStack(spacing: 12){
                Text("All Coins")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                HStack{
                    Text("Coins")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                    Spacer()
                    
                    Text("Price")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            ScrollView(.vertical) {
                VStack{
                   
                    ForEach(0...10,id: \.self){_ in
                        CoinView()

                    }
                }
                .padding()
            }
        }
        
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
