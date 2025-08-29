//
//  ContentView.swift
//  iExpense
//
//  Created by Dmitry Kononov on 28.08.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numbers: [Int] = []
    @State private var currentNumber = 1
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar { EditButton() }
        }
    }
    
    private func removeRows(at indexSet: IndexSet) {
        numbers.remove(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
}
