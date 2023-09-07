//
//  UserView.swift
//  MoviePlayer
//
//  Created by ceksi on 5.09.2023.
//

import SwiftUI

struct UserView: View {
    
    let user: User
   
    
    var body: some View {
        VStack{
            CustomImageView(url: user.avatar)
                .frame(width:UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset( y: UIScreen.main.bounds.height * -0.25)
                .padding(.bottom,UIScreen.main.bounds.height * -0.13)
         
    }
}


}
