//
//  MovieCategory.swift
//  MovieDemoApp
//
//  Created by Punde, Rasika Nanasaheb on 04/05/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI
import Combine

class MovieCategory: Identifiable, ObservableObject {
    var id = UUID()
    var categoryName: String = ""
    var movieList: [Movie]?
    @State var isSelected: Bool = false

    init(categoryName: String, movieList: [Movie]?) {
        self.categoryName = categoryName
        self.movieList = movieList
    }

}

// Movie Data
extension MovieCategory {
    static let demoData = [
        MovieCategory(categoryName: "Action", movieList: Movie.demoData),
        MovieCategory(categoryName: "Comedy", movieList: Movie.demoData1),
        MovieCategory(categoryName: "Drama", movieList: Movie.demoData1),
        MovieCategory(categoryName: "Crime", movieList: Movie.demoData1),
        MovieCategory(categoryName: "Rom-Com", movieList: Movie.demoData1)
    ]
}

extension MovieCategory: Equatable, Hashable {
  static func == (lhs: MovieCategory, rhs: MovieCategory) -> Bool {
    return lhs.id == rhs.id
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}

