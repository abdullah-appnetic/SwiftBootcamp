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
            //.fill(.primary) //Primary color changes according to phone active theme color
            //.fill(Color(uiColor: UIColor.secondarySystemBackground)) // UiColors helps us to access system's colors and will change according to the theme and colors set on device
            .fill(Color("CustomColor")) // We can add our custom colors that we set in assets,by writing their name in string in Color()
            .frame(width: 300, height: 200)
            .shadow(color: Color.orange.opacity(0.9), radius: 20, x: 10, y: 10) // We can shadow with this but we have to add color parameter before radius and can set x and y for position of shadow
    }
}

#Preview {
    ColorsBootcamp()
}
