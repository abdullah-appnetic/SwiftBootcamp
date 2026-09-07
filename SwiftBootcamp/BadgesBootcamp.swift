//
//  BadgesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            List {
                Text("Hello, world!")
                    .badge(5)
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge("new")
            Color.green
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            
            Color.blue
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
    }
}
#Preview {
    BadgesBootcamp()
}
