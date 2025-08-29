//
//  ContentView.swift
//  iExpense
//
//  Created by Dmitry Kononov on 28.08.25.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}


struct ContentView: View {
    @State private var user = User(firstName: "Tailor", lastName: "Swift")
    var body: some View {
        VStack {
            Button("Save User") {
                let encoder = JSONEncoder()
                if let data = try? encoder.encode(user) {
                    UserDefaults.standard.set(data, forKey: "UserData")
                }
            }
        }
    }

}

#Preview {
    ContentView()
}
