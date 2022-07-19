//
//  Player.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

import Foundation
import AVFoundation

class Player: ObservableObject {
    
    var player = AVAudioPlayer()
    
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
            
            // Plays the audio
            player.play()
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
