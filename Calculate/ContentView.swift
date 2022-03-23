//
//  ContentView.swift
//  Calculate
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct ContentView: View {
    
    
    let grid = [
        ["AC", "⌫", "%", "/"],
        ["7", "8", "8", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        [".", "0", "", "="],
    ]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Hello, world!")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size: 30, weight: .heavy))
            } .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                Spacer()
                Text("Hello, world!")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size: 40, weight: .heavy))
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
            ForEach(grid, id: \.self) { row in
                ForEach(row, id: \.self) { cell in
                    Button(action: {
                        <#code#>
                    }, label: {
                        Text("Button")
                    })
                }
            }
            
        }
        .background(Color.black.ignoresSafeArea())
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
