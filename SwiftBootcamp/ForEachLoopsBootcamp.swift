//
//  ForEachLoopsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 03/09/2026.
//

import SwiftUI

struct ForEachLoopsBootcamp: View {
    
    let tasks = [
        "Complete Swift basics",
        "Practice arrays",
        "Learn closures",
        "Build a SwiftUI app",
        "Review yesterday's notes"
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Routine RoadMap of Swift")
                .font(.title)
                .fontWeight(.semibold)
            ForEach(0..<tasks.count, id: \.self) { index in
                Text("\(index) : \(tasks[index])")
            }
        }
    }
}

#Preview {
    ForEachLoopsBootcamp()
}
