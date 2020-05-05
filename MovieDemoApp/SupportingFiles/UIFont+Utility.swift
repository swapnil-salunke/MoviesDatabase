//
//  UIFont+Utility.swift
//  MovieDemoApp
//
//  Created by Punde, Rasika Nanasaheb on 04/05/20.
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

extension Font {
    static func getBigTitleFont() -> Font {
        return Font.custom("Proxima-Nova-Sbold", size: 24)
    }

    static func getRatingFont() -> Font {
        return Font.custom("Proxima-Nova-Regular", size: 20)
    }
}
