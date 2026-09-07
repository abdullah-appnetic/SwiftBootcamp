//
//  ContentUnavailableViewBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
         ContentUnavailableView.search(text: "abc")
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Please connect to the internet and try again.")
        )
        
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
