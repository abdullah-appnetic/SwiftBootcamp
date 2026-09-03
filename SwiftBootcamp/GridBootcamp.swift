//
//  GridBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct GridBootcamp: View {
    let apps = [
            "Messages",
            "Camera",
            "Photos",
            "Maps",
            "Music",
            "Weather",
            "Notes",
            "Calendar",
            "Settings",
            "Safari",
            "Mail",
            "Clock"
        ]
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        NavigationStack {
                    
                    ScrollView {
                        
                        // LazyVGrid = vertically scrolling grid
                        // It creates items in rows and columns as needed
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(apps, id: \.self) { app in
                                VStack(spacing: 10) {
                                    Text(String(app.first!))
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.white)
                                        .frame(width: 70, height: 70)
                                        .background(.blue)
                                        .clipShape(RoundedRectangle(cornerRadius: 18))
                                    Text(app)
                                        .font(.caption)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                        .padding()
                    }
                    .navigationTitle("My Apps")
                }
            }
        }


#Preview {
    GridBootcamp()
}
