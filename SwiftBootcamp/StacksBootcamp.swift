//
//  StacksBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

/*
    Vstacks --> Vertical
    Hstacks --> Horizontal
    Zstacks --> zIndex (back to front)
 */

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.purple)
                .frame(width: 420,height: 1000, alignment: .center)
            VStack{
                HStack(alignment: .center, spacing: 30,content: {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100,height: 100)
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100,height: 100)
                    
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 100,height: 100)
                    
                })
                ZStack(alignment: .bottomTrailing,content: {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100,height: 100)
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 80,height: 80)
                    
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 60,height: 60)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 40,height: 40)
                    
                })
                VStack(alignment: .center, spacing: 30,content: {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100,height: 100)
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100,height: 100)
                    
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 100,height: 100)
                    
                })
            }
        }
    }
}

#Preview {
    StacksBootcamp()
}
