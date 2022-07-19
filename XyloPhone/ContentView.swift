//
//  ContentView.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @EnvironmentObject private var player: Player
    
    var body: some View {
        GeometryReader { geo in
            
            VStack {
                
                Button {
                    player.playSound("C")
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
                    player.playSound("D")
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
                    player.playSound("E")
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
                    player.playSound("F")
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
                    player.playSound("G")
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
                    player.playSound("A")
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
                    player.playSound("B")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
