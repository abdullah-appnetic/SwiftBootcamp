//
//  ExtractedFunctionsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        ZStack {
            // background
            Color(backgroundColor).opacity(0.6).ignoresSafeArea()
            //Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(
                action: {
                  buttonPressed()
                },
                label: {
                    Text("Change BG Color".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(Color.black)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                })
        }
    }
    
    func buttonPressed() {
        backgroundColor = backgroundColor == Color.yellow ? Color.blue : Color.yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
