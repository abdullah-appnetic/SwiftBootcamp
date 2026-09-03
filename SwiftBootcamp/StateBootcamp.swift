//
//  StateBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State private var count = 0
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                colors: [.blue, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Counter")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                VStack(spacing: 10) {
                    
                    Text("Current Value")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    Text("\(count)")
                        .font(.system(size: 80, weight: .bold))
                        .foregroundStyle(.primary)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 15)
                
                HStack(spacing: 30) {
                    Button {
                        count -= 1
                    } label: {
                        Image(systemName: "minus")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(width: 70, height: 70)
                            .background(.red)
                            .clipShape(Circle())
                    }
                    
                    Button {
                        count += 1
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(width: 70, height: 70)
                            .background(.green)
                            .clipShape(Circle())
                    }
                }
                
                Button {
                    count = 0
                } label: {
                    Text("Reset Counter")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black.opacity(0.25))
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                }
            }
            .padding(25)
        }
    }
}

#Preview {
    StateBootcamp()
}
