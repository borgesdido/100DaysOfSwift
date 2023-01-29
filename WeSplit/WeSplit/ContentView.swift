//
//  ContentView.swift
//  WeSplit
//
//  Created by Diego Araújo Borges on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let localCurrency: FloatingPointFormatStyle<Double>.Currency = .currency(code: Locale.current.currencyCode ?? "BRL")
    
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        return checkAmount + tipValue
        
    }
    
    var totalPerPerson: Double {
        grandTotal / Double (numberOfPeople + 2)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Valor", value: $checkAmount, format: localCurrency)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Numero de pessoas:", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) pessoas")
                        }
                    }
                }
                
                Section {
                    Picker("Porcentagem da gorjeta:", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                    
                } header: {
                    Text("Qaunto de gorjeta deseja deixar")
                }
                
                Section {
                    Text( grandTotal, format: localCurrency)
                } header: {
                    Text("Valor total")
                }
                
                Section {
                    Text(totalPerPerson, format: localCurrency)
                } header: {
                    Text("Valor por Pessoa")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Pronto") {
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
