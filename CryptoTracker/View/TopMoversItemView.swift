//
//  TopMoversItemView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("ethereum-logo")
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundColor(.gray)
                .clipShape(Circle())
                .padding(.bottom,8)
                
            
            HStack(spacing:2){
                Text("Ethereum")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$1900")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percent change
            Text("+ 6.5%")
                .font(.callout)
                .foregroundColor(.green)
            
            
        }
        .frame(width: 140,height: 140)
        
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth:2)
        )
        
        
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
