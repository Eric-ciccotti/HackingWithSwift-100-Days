//
//  ContentView.swift
//  WeSplit
//
//  Created by Eric CICCOTTI on 12/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State var counter: Int = 0
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("say your name: \(name)")
                    TextField("here", text: $name)
                }
                Section {
                    Text("jonny")
                }
                Group {
                    Button("Touch me \(counter)") {
                        counter += 1
                    }
                }
            }
            .navigationTitle("Title partout")
            .navigationBarTitleDisplayMode(
                .inline
            )
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
