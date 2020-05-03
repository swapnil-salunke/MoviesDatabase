//
//  RatingView.swift
//  MovieDemoApp
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

// Rating View
struct RatingView: View {
    var body: some View {
        VStack() {
            Image(systemName: "star.fill")
            Text("8.2/10")
            Text("150,212")
                .font(.subheadline)
                .foregroundColor(.secondary
            )
        }.padding(.all)
    }
}
