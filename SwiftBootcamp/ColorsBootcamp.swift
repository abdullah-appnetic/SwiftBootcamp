//
//  ColorsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 02/09/2026.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .circular)
            .fill(.red)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ColorsBootcamp()
}
