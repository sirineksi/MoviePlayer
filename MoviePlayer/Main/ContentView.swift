//
//  ContentView.swift
//  MoviePlayer
//
//  Created by ceksi on 28.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination:CategoryListView()) {
                    Text("Category list View")
                }.padding()
                
                NavigationLink(destination:ProductListView()) {
                    Text("Product List View")
                }.padding()
            }
        }
        .navigationBarTitle("Main View", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
