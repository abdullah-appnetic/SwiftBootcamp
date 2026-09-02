//
//  IconsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 02/09/2026.
//

/* We can get these system icon name from an app named SF Symbol can be downloaded from browser with more than 7000 icon options */

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "house.fill")
//            .renderingMode(.original) // Used for Multicolor Icons from SF Symbols 
            .resizable() // We have to add resizeable property right next to image if we want to use otherwise it will not work
//            .aspectRatio(contentMode: .fit)
            .scaledToFit() // We can alse use like this
//            .scaledToFill() // We can alse use like this
//            .font(.system(size: 50))
            .foregroundStyle(.brown)
        // We can also adjust size of icon through frame and resizeable
            .frame(width: 150,height: 150)
//            .clipped() // If we want to cut out the part which is going outsite the given frame
            
    }
}

#Preview {
    IconsBootcamp()
}
