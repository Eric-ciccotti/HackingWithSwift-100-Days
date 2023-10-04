//
//  ContentView.swift
//  CustomContainer
//
//  Created by P994396 on 04/10/2023.
//

import SwiftUI

struct Grid<Content: View> : View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
        
        var body: some View {
            VStack {
                ForEach(0..<rows, id: \.self) { row in
                    HStack {
                        ForEach(0..<columns, id: \.self) { column in
                            content(row, column)
                        }
                    }
                }
            }
        }
        
    
}

struct ContentView: View {
    var body: some View {
        Grid(rows: 5, columns: 5) { rows, columns in
            HStack {
                Text("QW")
                Text("QW")
                Text("KP")
            }
        }
    }
}

#Preview {
    ContentView()
}
