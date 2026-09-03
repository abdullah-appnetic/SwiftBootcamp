//
//  AnimationTimingBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button( action: {
                withAnimation {
                    isAnimated.toggle() // toggle reverse the value of a boolean like true to false and false to true
                }
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 80,height: 80)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "playpause.fill")
                            .font(.title)
                            .foregroundStyle(.green)
                    })
                    .padding(.top, 20)
            })
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 :50, height: 100)
                .animation(Animation.spring, value: isAnimated) // most common animation in swift is spring cause it looks very natural
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 :50, height: 100)
                .animation(Animation.linear(duration: timing), value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 :50, height: 100)
                .animation(Animation.easeInOut(duration: timing), value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 :50, height: 100)
                .animation(Animation.easeIn(duration: timing), value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 :50, height: 100)
                .animation(Animation.easeOut(duration: timing), value: isAnimated)
            Spacer()
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
