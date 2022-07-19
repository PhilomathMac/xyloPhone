//
//  XyloPhoneApp.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

import SwiftUI

@main
struct XyloPhoneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Player())
        }
    }
}
