//
//  ImageAndRatingsView.swift
//  MovieDemoApp
//  Copyright © 2020 Deloitte Digital. All rights reserved.
//

import SwiftUI

/// Movie Image and Ratings view combined
struct ImageAndRatingsView: View {
    var image: String

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            MovieImageView(image: image)
            MovieRatingsView()
        }

    }
}
