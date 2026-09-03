//
//  SpacerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack(spacing: 30){
            HStack{
                Rectangle()
                    .fill(.mint)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.green)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.teal)
                    .frame(width: 50,height: 50)
            }
            
            HStack{
                Rectangle()
                    .fill(.mint)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.teal)
                    .frame(width: 50,height: 50)
            }
            
            HStack{
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.mint)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.green)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.teal)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
            }
            
            HStack{
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.mint)
                    .frame(width: 50,height: 50)
               
                Rectangle()
                    .fill(.teal)
                    .frame(width: 50,height: 50)
            }
            
            HStack{
                Rectangle()
                    .fill(.mint)
                    .frame(width: 50,height: 50)
                Rectangle()
                    .fill(.teal)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
            }
            
            HStack{
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
                Rectangle()
                    .fill(.mint)
                    .frame(width: 50,height: 50)
                Rectangle()
                    .fill(.teal)
                    .frame(width: 50,height: 50)
                Spacer()
                    .frame(height: 5)
                    .background(.gray)
            }
        }.padding()
    }
}

#Preview {
    SpacerBootcamp()
}
