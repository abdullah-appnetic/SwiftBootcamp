//
//  ImagesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 02/09/2026.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("yae")
            .resizable()
            .scaledToFill()
            .frame(width: 350,height: 200)
//            .cornerRadius(25)
            .clipShape(.circle) // To add image in a shape
    }
}

#Preview {
    ImagesBootcamp()
}
