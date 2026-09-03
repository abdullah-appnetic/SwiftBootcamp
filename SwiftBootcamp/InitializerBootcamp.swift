//
//  InitializerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let amount: Int
    let fruit: Fruit
    
    init(amount: Int, fruit: Fruit) {
        self.amount = amount
        self.fruit = fruit
        
        if fruit == .apple {
            self.backgroundColor = .red
        }else if fruit == .banana {
            self.backgroundColor = .yellow
        }
        else if fruit == .orange {
            self.backgroundColor = .orange
        }else {
            self.backgroundColor = .gray
        }
    }
    
    enum Fruit {
        case apple, banana, orange, others
    }
    
    var body: some View {
        VStack(spacing: 12.0){
            Text("\(amount)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            Text("\(fruit.self)".uppercased())
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    VStack(spacing: 20){
        InitializerBootcamp(amount: 15, fruit: .orange)
        InitializerBootcamp(amount: 34, fruit: .apple)
        InitializerBootcamp(amount: 28, fruit: .banana)
        InitializerBootcamp(amount: 5, fruit: .others)
    }
}
