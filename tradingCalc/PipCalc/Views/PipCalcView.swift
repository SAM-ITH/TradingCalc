//
//  ContentView.swift
//  tradingCalc
//
//  Created by Samith on 2024-02-14.
//

import SwiftUI

struct PipCalcView: View {
    @State private var baseCurrency = "USD"
    let baseCurrencyItems = ["USD", "EUR", "GBP"]
    @State private var currencyPair = "USD/EUR"
    let currencyPairItems = ["USD/EUR", "GBP/USD", "GBP/JPY"]
    
    var body: some View {
        VStack{
            Text("Trade")
                .font(.title)
                .fontWeight(.bold)
                .padding(20)
            /// base currency selection
            HStack(spacing: 60){
                Text("Base currency")
                    .font(.headline)
                Picker("Choose", selection: $baseCurrency) {
                    ForEach(baseCurrencyItems, id: \.self) {
                        Text($0)
                    }
                }
            }
            /// instrument pair selection
            HStack(spacing: 60){
                Text("Currency pair")
                    .font(.headline)
                Picker("Choose", selection: $currencyPair) {
                    ForEach(currencyPairItems, id: \.self) {
                        Text($0)
                    }
                }
            }
            /// trade size selection
            HStack(spacing: 60){
                Text("Currency pair")
                    .font(.headline)
                Picker("Choose", selection: $currencyPair) {
                    ForEach(currencyPairItems, id: \.self) {
                        Text($0)
                    }
                }
            }
            /// showing the calculated value
            Text("Pip value")
                .font(.title)
                .fontWeight(.bold)
                .padding(20)
            /// showing the calculated pip value
            HStack(spacing: 60){
                Text("Pip value")
                    .font(.headline)
                
            }
        }
    }
}

#Preview {
    PipCalcView()
}
