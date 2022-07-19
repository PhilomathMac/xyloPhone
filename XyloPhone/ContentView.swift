//
//  ContentView.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("C") {
                playSound("C")
            }
            .buttonStyle(KeyButton(key: "C"))
            
            Button("D") {
                playSound("D")
            }
            .buttonStyle(KeyButton(key: "D"))
            
            Button("E") {
                playSound("E")
            }
            .buttonStyle(KeyButton(key: "E"))
            
            Button("F") {
                playSound("F")
            }
            .buttonStyle(KeyButton(key: "F"))
            
            Button("G") {
                playSound("G")
            }
            .buttonStyle(KeyButton(key: "G"))
            
            Button("A") {
                playSound("A")
            }
            .buttonStyle(KeyButton(key: "A"))
            
            Button("B") {
                playSound("B")
            }
            .buttonStyle(KeyButton(key: "B"))
            
        }
        .padding()
    }
    
    private func playSound(_ keyName: String) {
        print("I'm not playing \(keyName) yet")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
