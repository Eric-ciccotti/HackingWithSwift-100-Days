//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by P994396 on 30/09/2023.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    var body: some View { Text(text)
            .font(.largeTitle)
            .padding()
            .background(Color(.brown))
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    @ViewBuilder var coolux : some View {
        Group {
            CapsuleText(text: "Hello")
            CapsuleText(text: "You cool ?")
        }
    }

    var body: some View {
        HStack {
            coolux
        }
    }
}

#Preview {
    ContentView()
}
