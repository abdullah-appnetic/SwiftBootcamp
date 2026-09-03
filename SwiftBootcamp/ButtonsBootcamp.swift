//
//  ButtonsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is a Title"
    
    var body: some View {
        VStack(spacing: 30){
            
            Text(title)
            
            Button("Press Me!") {
                self.title = "BUTTON PRESSED"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "BUTTON 2 WAS PRESSED"
            }, label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(Color.brown)
                    .cornerRadius(12)
                    .shadow(radius: 10)
            })
            
            Button(action: {
                self.title = "BUTTON 3 WAS PRESSED"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "star.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.yellow)
                    })
            })
            
            Button(action: {
                self.title = "BUTTON 4 WAS PRESSED"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
