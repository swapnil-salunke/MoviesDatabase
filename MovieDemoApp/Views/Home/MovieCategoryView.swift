//
//  MovieCategoryView.swift
//  MovieDemoApp
//
//  Created by Punde, Rasika Nanasaheb on 04/05/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct MovieCategoryView: View {
    @ObservedObject var category: MovieCategory


    var body: some View {
        Button(action: {
            withAnimation {
                self.category.isSelected.toggle()
            }
        }) {
            Text(self.category.categoryName)
                .frame(width: 80.0)
            .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25 as CGFloat)
                        .stroke(Color.black,
                                lineWidth: 2 as CGFloat)
                        )
                .background(RoundedRectangle(cornerRadius: 25.0 as CGFloat)
                    .foregroundColor(self.category.isSelected ? Color.gray : Color.white))
        }

    }
}

//TODO: Rasika - how to get dyanamic button size

struct MovieCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCategoryView(category: MovieCategory.demoData.randomElement()!)
    }
}
