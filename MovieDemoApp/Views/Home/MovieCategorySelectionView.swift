//
//  MovieCategorySelectionView.swift
//  MovieDemoApp
//
//  Created by Punde, Rasika Nanasaheb on 04/05/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct MovieCategorySelectionView: View {
    var movieCategory: [MovieCategory]

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(movieCategory) { category in
                        MovieCategoryView(category: category)
                            .frame(width: 100, height: 100)
                            .padding([.leading,.trailing], 10)
                    }
                }
            }.frame(width: UIScreen.main.bounds.width, height: 200, alignment: .top)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    ForEach(Movie.demoData) { movie in
                        GeometryReader { proxy in
                            MoviewListView(movie: movie)
                                .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX)), axis: (x: 0, y: 0, z: 0))
                        }.frame(width: 210, height: 400)
                            .padding([.leading,.trailing], 10 as CGFloat)
                    }
                }.frame(alignment: .bottom)
            }
        }
    }
}

struct MovieCategorySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCategorySelectionView(movieCategory: MovieCategory.demoData)
    }
}
