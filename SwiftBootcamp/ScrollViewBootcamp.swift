//
//  ScrollViewBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(1...10, id: \.self) { number in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(
                                    Color.blue
                                )
                                .cornerRadius(25)
                                .shadow(color: .red, radius: 10)
                                .frame(width: 200, height: 150)
                        }
                    }
                    .padding()
                }.onAppear {
                    proxy.scrollTo(3, anchor: .center)
                }
            }

            ScrollView(.vertical) {
                LazyVStack(
                    spacing: 20
                ) {  // Lazy help us when we dont want to load all items in scroll in only loads that are visible on screen and while we scroll it load item below behind the scene
                    ForEach(1...100, id: \.self) { number in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.red)
                            .cornerRadius(25)
                            .shadow(color: .blue, radius: 10)
                            .frame(width: 200, height: 150)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
