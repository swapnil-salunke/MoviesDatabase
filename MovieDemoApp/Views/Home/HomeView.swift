//
//  ContentView.swift
//  MovieDemoApp
//
//  Created by Singh, Nilaakash Uday on 27/04/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var movieCategory: [MovieCategory] = MovieCategory.demoData

    var body: some View {
        VStack{
            MovieCategorySelectionView(movieCategory: movieCategory)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
