//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            Text("1")
                .font(.caption)
                .padding(.trailing,2)
                .foregroundColor(.gray)
            
            Image("ethereum-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .clipShape(Circle())
                
            
            VStack(alignment: .leading,spacing: 4){
                Text("Ethereum")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("ETH")
                    .font(.caption)
                    .padding(.leading,6)

            }
            .padding(.leading,2)
             
            Spacer()
            
            VStack(alignment: .trailing,spacing: 4){
                Text("$1900")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("+2.3%")
                    .font(.caption)
                    .foregroundColor(.red)
            }
        }
        .padding(.vertical,4)
        .frame(maxWidth: .infinity)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
