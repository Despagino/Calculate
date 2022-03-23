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
                HStack {
                    ForEach(row, id: \.self) { cell in
                        Button(action: {
                            buttonPressed(cell: cell)
                        }, label: {
                            Text(cell)
                                .foregroundColor(.white)
                                .font(.system(size: 40, weight: .heavy))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        })
                    }
                }
            }
        }
        .background(Color.black.ignoresSafeArea())
}

    func buttonPressed(cell: String) {
        
    }
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
