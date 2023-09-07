//
//  UserListView.swift
//  MoviePlayer
//
//  Created by ceksi on 5.09.2023.
//

import SwiftUI

struct UserListView: View {
    
    @State var users: [User] = []
     
    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink(destination: UserView(user: user)) {
                   
                    CustomImageView(url: user.avatar)
                        
                        
                  
                        
                    VStack {
                        
                    Text(user.name)
                    Text(user.email)
                    
                    }
                }
                
            }
            .navigationBarTitle("User")
        }
        .onAppear {
            APIManager().fetchUsers { fetchedUser in
                self.users = fetchedUser           }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
