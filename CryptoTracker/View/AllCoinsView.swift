//
//  AllCoinsView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            VStack(spacing: 12){
                Text("All Coins")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                HStack{
                    Text("Coins")
                    Spacer()
                    
                    Text("Price")
                }
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            ScrollView(.vertical) {
                VStack{
                    ForEach(0...10,id: \.self){_ in
                        CoinRowView()

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
