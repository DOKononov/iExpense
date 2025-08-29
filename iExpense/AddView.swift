//
//  AddView.swift
//  iExpense
//
//  Created by Dmitry Kononov on 29.08.25.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    var expendses: Expenses
    let types = ["Buisness", "Personal"]
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
                
            }
            .navigationTitle("Add new expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Save") {
                    let newItem = ExpenseItem(name: name, type: type, amount: amount)
                    expendses.items.append(newItem)
                    dismiss()
                }
            }
        }

    }
}

#Preview {
    AddView(expendses: Expenses())
}
