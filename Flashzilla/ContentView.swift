//
//  ContentView.swift
//  Flashzilla
//
//  Created by Mukthar Amiyan on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var offSet = CGSize.zero
    @State private var isDragging = false
      
    var body: some View {
        
        let dragGesture = DragGesture()
            .onChanged { value in
                offSet = value.translation
            }.onEnded { _ in
                withAnimation {
                    offSet = .zero
                    isDragging = false
                }
            }
        
        let pressGesture = LongPressGesture()
            .onEnded { _ in
                withAnimation {
                    isDragging = true
                }
            }
        let compined = pressGesture.sequenced(before: dragGesture)
        
            Circle()
            .fill(.red)
            .frame(width: 64,height: 64)
            .scaleEffect(isDragging ? 1.5 : 1)
            .offset(offSet)
            .gesture(compined)
    }
}

#Preview {
    ContentView()
}
