//
//  Helper.swift
//  MoviePlayer
//
//  Created by ceksi on 4.09.2023.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: UInt32, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: opacity
        )
    }
}

extension String {
    init(price: Int) {
        self.init(
            "Ürün Fiyatı: \(price)"
           
        )
    }
}


