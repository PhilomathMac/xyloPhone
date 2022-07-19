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
        GeometryReader { geo in
            
            VStack {
                
                Button {
                    playSound("C")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.red, .orange],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width)
                        Text("C")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                }
                
                Button {
                    playSound("D")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.orange, .yellow],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width - 20)
                        Text("D")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
                
                Button {
                    playSound("E")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.yellow, .green],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width - 40)
                        Text("E")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
                
                Button {
                    playSound("F")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.green, .cyan],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width - 60)
                        Text("F")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
                
                Button {
                    playSound("G")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.cyan, .blue],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width - 80)
                        Text("G")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
                
                Button {
                    playSound("A")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.blue, .purple],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width - 100)
                        Text("A")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
                
                Button {
                    playSound("B")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                colors: [.purple, .pink],
                                startPoint: UnitPoint(x: 0.0, y: 0.0),
                                endPoint: UnitPoint(x: 1.0, y: 1.0)))
                            .frame(width: geo.size.width - 110)
                        Text("B")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
            }
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
            
            //             Plays the audio
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
