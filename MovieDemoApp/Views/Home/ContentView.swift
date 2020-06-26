//
//  ContentView.swift
//  MovieDemoApp
//
//  Created by Singh, Nilaakash Uday on 27/04/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List( 0 ..< 2 ) {_ in
                NavigationLink(destination: MovieDetailView()) {
                    Text("Movie Detail Screen")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
