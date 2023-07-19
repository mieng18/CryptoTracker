//
//  HomeView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI


struct HomeView: View {
    var body: some View{
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                TopMoversView()
                
                Divider()
                AllCoinsView()
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
