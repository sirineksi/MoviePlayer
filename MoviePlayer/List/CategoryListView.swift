//
//  CategoryListView.swift
//  MoviePlayer
//
//  Created by ceksi on 28.08.2023.
//

import SwiftUI

struct CategoryListView: View {
    
    @State var categorys: [Category] = []
    
    var body: some View {
      
        NavigationView {
            List(categorys) { category in
                NavigationLink(destination: CategoryView(category: category)) {
                    AsyncImage(url: URL(string: category.image))

                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                                    Text(category.name)
                }
                
            }
            .navigationBarTitle("Category")
        }
        .onAppear {
            APIManager().fetchCategory { fetchedCategory in
                self.categorys = fetchedCategory
            }
        }
    }
}



