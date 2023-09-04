//
//  CategoryView.swift
//  MoviePlayer
//
//  Created by ceksi on 28.08.2023.
//

import SwiftUI

struct CategoryView: View {
    
    let category:Category
    
    var body: some View {
        VStack{
            Text(category.name)
            font(.title)
            Text(category.name)
            font(.title2)
        }
        .navigationBarTitle(category.name)
    }
}


