//
//  ProductListView.swift
//  MoviePlayer
//
//  Created by ceksi on 31.08.2023.
//

import SwiftUI

struct ProductListView: View {
   
    @State var products: [Product] = []
   
    var body: some View {
        VStack {
     
        NavigationView {
            
                List(products) { product in
                  
                        NavigationLink(destination: ProductView(product: product)) {
                        VStack{
                           
                            AsyncImage(url: URL(string: product.category.image))
                            
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: UIScreen.main.bounds.width * 0.7,
                                    height : UIScreen.main.bounds.height * 0.3 , alignment: .center)
                                    .cornerRadius(10)
                            Text(product.title)
                                .padding()
                                .foregroundColor(.red)
                                .font(.title2)
                            Text(product.description)
                               
                            
                            HStack (spacing: 20){
                                Button(action: {}) {
                                    
                                    Text("Kategori: \(product.category.name)")
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 13))
                                        
                                }
                                Button (action: {}) {
                                    Text(String(price: product.price))
                                        .padding()
                                        .background(Color(hex: 0xF29727))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 13))
                                    
                               
                                }
                               
                            }
                            
                            .padding()
                            
                    }
                        }
                        
                }
                .navigationBarTitle("Product List" , displayMode: .inline)
            }.buttonStyle(PlainButtonStyle())
        
            .onAppear {
                APIManager().fetchProducts { fetchedProduct in
                    self.products = fetchedProduct
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
}


