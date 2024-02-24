//
//  ContentView.swift
//  Flashzilla
//
//  Created by Mukthar Amiyan on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onChange(of: scenePhase) { oldValue, newValue in
            if newValue == .active {
                print("Active")
            }else if newValue == .inactive {
                print("Inactive")
            }else if newValue == .background {
                print("Background")
            }
        }
    }
}

#Preview {
    ContentView()
}
