//
//  TopMoversView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
                .padding(.horizontal)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing:16){
                    ForEach(viewModel.topMovingCoin){ coin in
                        TopMoversItemView(coin: coin)
                    }
                }
                .padding()
                
            }

        }
    }
}

//struct TopMoversView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversView()
//    }
//}
