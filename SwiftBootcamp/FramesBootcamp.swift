//
//  FramesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 02/09/2026.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(width: 100, height: 300)
            .background(Color.yellow)
            .frame(width: 250)
            .background(Color.blue)
            .frame(width: 300)
            .background(Color.yellow)
            .frame(width: 500)
            .background(Color.teal)
//            .frame(width: 200,height: 200,alignment: .center)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.red)
    }
}

#Preview {
    FramesBootcamp()
}
