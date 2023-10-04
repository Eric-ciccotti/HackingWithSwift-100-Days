//
//  ContentView.swift
//  CoolUnitConverter
//
//  Created by Eric CICCOTTI on 21/09/2023.
//

import SwiftUI

struct ContentView: View {
    private var values: [String] = ["seconds","minutes","hours","days"]
    
    @State private var selectedInput: String = "minutes"
    @State private var selectedOutput: String = "days"
    @FocusState private var isFocused: Bool
    
    @State private var enteredValue = 0.0
    
    var result: Double {
        let conversionFactors: [String: Double] = [
            "seconds": 1,
            "minutes": 60,
            "hours": 3600,
            "days": 86400
        ]
        guard let inputFactor = conversionFactors[selectedInput],let outputFactor = conversionFactors[selectedOutput] else {
            return 0
        }
        return enteredValue * (inputFactor / outputFactor)
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("selected input", selection: $selectedInput) {
                        ForEach(values, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.palette)
                    
            
                }
                Section {
                    TextField("type here", value: $enteredValue, format: .number)
                        .keyboardType(UIKeyboardType.decimalPad)
                        .focused($isFocused)
                } header : {
                    Text("INPUT HERE")
                }
                Section {
                    Picker("selected output", selection: $selectedOutput) {
                        ForEach(values, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.palette)
                }
                Section {
                    Text(result, format: .number)
                } header: {
                    Text("RESULT")
                }
                .navigationTitle("Fast Time Converter")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        
                        Button("done") {
                            isFocused = false
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
