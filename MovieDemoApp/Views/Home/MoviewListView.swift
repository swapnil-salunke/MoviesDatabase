//
//  MoviewListView.swift
//  MovieDemoApp
//
//  Created by Punde, Rasika Nanasaheb on 04/05/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct MoviewListView: View {
    var movie: Movie
    var body: some View {
        VStack {
            Image(movie.image)
                .resizable()
                .scaledToFill()
                .foregroundColor(Color.titleColor)
                .frame(width: 200, height: 300)
            .shadow(color: .gray, radius: 3.0, x: 0.0, y: 5.0)
            Text(movie.name)
                .font(Font.getBigTitleFont())
                .foregroundColor(.titleColor)
                .multilineTextAlignment(.center)
                .frame(width: 250)
                .padding([.leading, .top, .trailing])
                .shadow(color: .gray, radius: 3.0, x: 0.0, y: 5.0)
            HStack {
                Image("star")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .shadow(color: .gray, radius: 3.0, x: 0.0, y: 5.0)
                Text(movie.rating)
                    .font(Font.getRatingFont())
                    .foregroundColor(Color.subtitleColor)
                    .shadow(color: .gray, radius: 3.0, x: 0.0, y: 5.0)
            }
        }
    }
}

struct MoviewListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviewListView(movie: Movie.demoData.randomElement()!)
    }
}
