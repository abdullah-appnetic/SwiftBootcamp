//
//  ModelBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 04/09/2026.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Abdullah", userName: "abdullah1995", followerCount: 100, isVerified: true),
        UserModel(displayName: "Ali", userName: "ali32", followerCount: 55, isVerified: false),
        UserModel(displayName: "Ahmed", userName: "toofan", followerCount: 355, isVerified: false),
        UserModel(displayName: "John", userName: "doeee23", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Image( user.isVerified ? "genshin" : "yae")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40,height: 40)
                            .clipShape(.circle)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}
#Preview {
    ModelBootcamp()
}
