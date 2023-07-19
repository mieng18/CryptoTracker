//
//  HomeView.swift
//  CryptoTracker
//
//  Created by mai nguyen on 7/19/23.
//

import SwiftUI


struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View{
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                TopMoversView(viewModel: viewModel)
                
                Divider()
                AllCoinsView(viewModel: viewModel)
                
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
