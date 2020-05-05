//
//  MovieList.swift
//  MovieDemoApp
//
//  Created by Punde, Rasika Nanasaheb on 04/05/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var rating: String
}

// Movie Data
extension Movie {
    static let demoData = [
        Movie(image: "call_of_the_wild", name: "The Call of Wild", rating: "8.5"),
        Movie(image: "john_wick_chapter_three", name: "Ford v Ferrari", rating: "8.2"),
        Movie(image: "theres_something_in_the_water", name: "Downhill", rating: "8.1")
    ]

    static let demoData1 = [
        Movie(image: "call_of_the_wild", name: "The Call of Wild", rating: "8.5")
    ]
}

