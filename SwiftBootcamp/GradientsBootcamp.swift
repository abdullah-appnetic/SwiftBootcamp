//
//  GradientsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 02/09/2026.
//

/*
    "There are three type of Gradients:
        -> LinearGradient(Most Common)
        -> RadialGradient
        -> AngularGradient"
 */
 

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.indigo,Color.blue,Color.cyan,Color.teal]), startPoint: .topLeading, endPoint: UnitPoint.bottomTrailing)
//                RadialGradient(gradient: Gradient(colors: [Color.yellow,Color.red]), center: .center, startRadius: 5, endRadius: 100)
                AngularGradient(gradient: Gradient(colors: [Color.yellow,Color.red]), center: .center, angle: .degrees(45))
            )
            .frame(width: 300,height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
