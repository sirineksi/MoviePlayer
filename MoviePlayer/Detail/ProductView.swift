//
//  ProductViev.swift
//  MoviePlayer
//
//  Created by ceksi on 31.08.2023.
//

import SwiftUI

struct ProductView: View {
    @State var  product: Product
    
    
    var body: some View {
        VStack{
            Text(product.category.name)
                .font(.title)
                .padding()
                .foregroundColor(Color.blue)
            
            
            Text(product.title)
                .font(.title3)
                .padding()
                .foregroundColor(Color.red)
            
            
            TabView {
                ForEach(product.images, id: \.self) { imageName in
                   
                    AsyncImage(url: URL(string: product.category.image))
                    
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width * 0.7,
                            height : UIScreen.main.bounds.height * 0.3 , alignment: .center)
                            .cornerRadius(10)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        
        
        
        .navigationBarTitle(product.title)
    }
    
    
}

