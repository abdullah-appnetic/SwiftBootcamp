//
//  ShapeBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 02/09/2026.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
            .trim(from: 0.5, to: 1.0) // We can cut the Shapes or use only required parts on shape. We cannot use stroke and trim at same time
//          .stroke(Color.red, style: StrokeStyle(lineWidth: 30.0,lineCap: .round, dash: [40],),) // Used to highlight outlines of shapes cannot add stroke after colors also can add thickness of outlines with linewidth property and can also add ouline style
//          .fill(.orange) // Use to fill Color in Shapes
            .foregroundStyle(.indigo) // Also used to fill color
//          .frame(width: 100, height: 100) // Manage size of shapes
            .padding(35)
    }
}

#Preview {
    ShapesBootcamp()
}
