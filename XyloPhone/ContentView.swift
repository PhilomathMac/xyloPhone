//
//  ContentView.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    var player: AVAudioPlayer?
    
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
    
    /// Creates AVAudioSession (to play sound even when silent), sets up player with passed in soundName, and plays the sound
    func playSound(_ soundName: String) {
        
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }
        
        do {
            // .playback category allows the audio to play even if the device is in silent mode
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            
            // Activates the audioSession
            try AVAudioSession.sharedInstance().setActive(true)
            
            // Makes an audio player that plays a specific file
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = player else { return }
            
            // Plays the audio
            player.play()
            
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
