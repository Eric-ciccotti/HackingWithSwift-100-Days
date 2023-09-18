//
//  ContentView.swift
//  WeSplit
//
//  Created by Eric CICCOTTI on 12/09/2023.
//

import SwiftUI



struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    var currencyFormat : FloatingPointFormatStyle<Double>.Currency =  .currency(code: Locale.current.currency?.identifier ?? "EUR")
    
 
    var tipPercentages = 0..<101
    

       
    var totalPerPerson: (Double,Double) {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return (amountPerPerson, grandTotal)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Price", value: $checkAmount, format: currencyFormat)
                    .keyboardType(UIKeyboardType.decimalPad)
                    .focused($amountIsFocused)
                    Picker("people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker("tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)
                } header: {
                    Text("How much tip do you want to leave ?")
                }
                Section {
                    Text(totalPerPerson.0, format: currencyFormat)
                } header: {
                    Text("Amount per person")
                }
                Section {
                    Text(totalPerPerson.1, format: .currency(code: Locale.current.currency?.identifier ?? "EUR"))
                } header : {
                    Text("Total amount per check")
                }
            }
            .navigationTitle("We split")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


