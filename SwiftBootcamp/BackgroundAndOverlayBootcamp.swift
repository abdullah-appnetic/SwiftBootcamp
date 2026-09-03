//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {

    var body: some View {

        VStack(spacing: 150) {

            Text("Hello, World!")
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: 100, height: 100)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.yellow, Color.red]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: 130, height: 130)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.green, Color.purple]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: 150, height: 150)
                )

            Circle()
                 .fill(Color.pink)
                 .frame(width: 100,height: 100)
                 .overlay(
                     Text("1")
                         .font(.title)
                         .foregroundStyle(.white)
                 )
                 .background(
                     Circle()
                         .fill(
                             LinearGradient(
                                 gradient: Gradient(colors: [Color.blue, Color.purple]),
                                 startPoint: .leading,
                                 endPoint: .trailing
                             )
                         )
                         .frame(width: 120, height: 120)
                 )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.cyan, Color.purple]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: 120,height: 120)
                        .shadow(color: Color.black, radius: 10,x: 0.0,y: 10)
                        .overlay(
                            Circle()
                                .fill(.blue)
                                .frame(width: 35,height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                )
                            , alignment: .bottomTrailing
                        )
                )
        }
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
