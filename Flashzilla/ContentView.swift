//
//  ContentView.swift
//  Flashzilla
//
//  Created by Mukthar Amiyan on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var counter = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .onReceive(timer) { time in
                    if counter == 5 {
                        timer.upstream.connect().cancel()
                    }else {
                        print("The time is now \(time)")
                    }
                    
                    counter += 1
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
