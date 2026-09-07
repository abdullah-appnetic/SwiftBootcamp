//
//  PopoverBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

// sheets
// animations
// transitions

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.orange
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Button("BUTTON") {
                        showNewScreen.toggle()
                    }
                    .font(.largeTitle)
                    Spacer()
                }
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .offset(y: showNewScreen ? 0 : geometry.size.height)
                    .animation(.spring(), value: showNewScreen)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    PopoverBootcamp()
}
