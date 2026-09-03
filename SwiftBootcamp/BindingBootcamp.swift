//
//  BindingBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        ZStack {
            Color(backgroundColor).opacity(0.6).ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

#Preview {
    BindingBootcamp()
}


struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.pink

    var body: some View {
        Button(
            action: {
                backgroundColor = backgroundColor == Color.yellow ? Color.blue : Color.yellow
                buttonColor = buttonColor == Color.pink ? Color.green : Color.pink
            },
            label: {
                Text("Change BG Color".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(buttonColor)
                    .cornerRadius(12)
                    .shadow(radius: 10)
            })
    }
}
