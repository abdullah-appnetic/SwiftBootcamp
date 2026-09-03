//
//  PaddingAndSpacerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            Text("My name is Syed Abdullah. I am 19 years old. Iam currently an iOS Developer internee at Appnetic. I have completed the swift documentation now i am watching SwiftUI tutorial")
                .foregroundStyle(.gray)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.3), radius:10, x: 0.0, y: 10.0)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}
