//
//  ExtractSubviewsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color(.cyan).opacity(0.8).ignoresSafeArea()
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack{
            MyItem(quantity: 45, fruit: "Bananas", cardColor: .yellow)
            MyItem(quantity: 90, fruit: "Apples", cardColor: .red)
            MyItem(quantity: 25, fruit: "Oranges", cardColor: .orange)
            MyItem(quantity: 2, fruit: "Grapes", cardColor: .green)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}


struct  MyItem: View {
    
    let quantity: Int
    let fruit: String
    let cardColor: Color
    
    var body: some View {
        VStack {
            Text("\(quantity)")
            Text(fruit)
        }.foregroundStyle(.black)
        .padding()
        .background(cardColor)
        .cornerRadius(10)
    }
}
