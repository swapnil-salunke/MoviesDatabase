//
//  CastAndCrew.swift
//  MovieDemoApp
//  Copyright © 2020 Deloitte Digital. All rights reserved.
//

import Foundation

struct CastAndCrew : Identifiable {
    var id = UUID()
    var name: String
    var designation: String

    var image: String { return name }
}
