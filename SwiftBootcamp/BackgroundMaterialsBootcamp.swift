//
//  BackgroundMaterialsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("wallpaper")
                .resizable()
                .frame(width: .infinity, height: .infinity)
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
