//
//  OzelGorselView.swift
//  MoviePlayer
//
//  Created by ceksi on 5.09.2023.
//

import SwiftUI

struct CustomImageView: View {
    var url: String
    
    var body: some View {
        
        AsyncImage(
                        url: URL(string: url) ,
                        content: { image in
                            image.resizable()
                               
                                 .frame(maxWidth: 100, maxHeight: 100,alignment: .top)
                                 .clipShape(Circle())
                                 .overlay(Circle().stroke(Color.white, lineWidth: 3))
                                 .shadow(radius: 3)
                            
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
        
                
        
        
    }
}


