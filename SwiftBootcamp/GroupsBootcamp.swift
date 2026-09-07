//
//  GroupsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

struct GroupsBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}


#Preview {
    GroupsBootcamp()
}
