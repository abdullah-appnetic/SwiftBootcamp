//
//  AnimationBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button( action: {
                withAnimation {
                    isAnimated.toggle() // toggle reverse the value of a boolean like true to false and false to true
                }
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "arrow.swap")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    })
                    .padding(.top, 20)
            })
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? Color.yellow : Color.blue)
                .frame(width: isAnimated ? 100 : 300,height: isAnimated ? 100 : 300)
                .rotationEffect(
                    Angle(degrees: isAnimated ? 360 : 0)
                ) // rotation should be before offset
                .offset(y:isAnimated ? 300 : 0)
                .animation(.default.repeatCount(5, autoreverses: true), value: isAnimated)
            Spacer()
        }
        
    }
}

#Preview {
    AnimationBootcamp()
}
