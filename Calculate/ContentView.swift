//
//  ContentView.swift
//  Calculate
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct ContentView: View {
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
            
        }
        .background(Color.black.ignoresSafeArea())
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
