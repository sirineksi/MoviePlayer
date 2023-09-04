//
//  ProductViev.swift
//  MoviePlayer
//
//  Created by ceksi on 31.08.2023.
//

import SwiftUI

struct ProductViev: View {
    @State var  product: Product
    
    
    var body: some View {
        VStack{
            Text(product.title)
            font(.title)
            Text(product.description)
            font(.title)
            
            TabView {
                ForEach(product.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        
        
        
        .navigationBarTitle(product.title)
    }
    
    
}

