//
//  ControlGroup.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 07/09/2026.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
                // Button("Tres") {
                //
                //}
                Menu("How are you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                }
            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
                
            }
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
