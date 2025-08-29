//
//  ContentView.swift
//  iExpense
//
//  Created by Dmitry Kononov on 28.08.25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }

}

#Preview {
    ContentView()
}
