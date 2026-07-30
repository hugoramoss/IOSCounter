//
//  ContentView.swift
//  IOSCounter
//
//  Created by Hugo Ramos on 26/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int  = 0
    
    
    var body: some View {
        
        
        VStack{
            Text("Counter")
            Text("\(count)").font(.system(size: 30, weight: .bold))
            if count == 10
            {
                Text("Congratulations!🎉")
            } else if count == 20 {
                Text("This is the maximum")
            }
            
            
            
        }
        HStack{
            Button("Decrement") {
                if count == 0 {
                    
                } else {
                    count -= 1
                }
            }
            
            Button("Increment") {
                count += 1
                if count > 20 {
                    count = 0
                }
            }
        }
        VStack{
            Button("Reset") {
                count = 0
            }
        }
    }
}

#Preview {
    ContentView()
}
