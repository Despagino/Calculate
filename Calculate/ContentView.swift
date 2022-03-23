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
        [".", "0", "0.0", "="],
    ]
    
    let operators = ["/", "+", "%", "X"]
    
    @State var userInput = ""
    @State var result = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(userInput)
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size: 30, weight: .heavy))
            } .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                Spacer()
                Text(result)
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
                                .foregroundColor(buttonColor(cell: cell))
                                .font(.system(size: 40, weight: .heavy))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        })
                    }
                }
            }
        }
        .background(Color.black.ignoresSafeArea())
}

    func buttonColor(cell: String) -> Color {
        if (cell == "AC" || cell == "⌫") {
            return .red
        }
        
        if (operators.contains(cell) || cell == "-" || cell == "=") {
            return .orange
        }
        return .white
    }
    
    
    func buttonPressed(cell: String) {
        
        switch cell {
        case "AC":
            userInput = ""
            result = ""
            
        case "⌫":
            userInput = String(userInput.dropLast())
            
        case "=":
            result = calculateResults()
            
        default:
            userInput += cell
        }
        
    }
    
    func calculateResults() -> String {
        
        var input = userInput.replacingOccurrences(of: "%", with: "*0.01")
        input = userInput.replacingOccurrences(of: "X", with: "*")
        
        let expression = NSExpression(format: input)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        return formatResult(value: result)
        
    }
    
    func formatResult(value: Double) -> String {
        if value.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", value)
        }
        return String(format: "%.2f", value)
    }
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
