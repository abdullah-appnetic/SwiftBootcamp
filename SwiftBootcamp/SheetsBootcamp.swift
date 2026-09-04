//
//  SheetsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 04/09/2026.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack (alignment: .center) {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Open Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(.all, 20)
                    .background(Color.white.cornerRadius(20))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            }) // We can not use multiple screen covers in single view only 1 in a view it cover full screen
            
            //            .sheet(isPresented: $showSheet, content: {
            //                SecondScreen()
            //            }) // We can not use multiple sheets in single view only 1 in a view
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(.all, 20)
            })
            
        }
    }
}
#Preview {
    SheetsBootcamp()
}

