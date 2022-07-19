//
//  XyloPhoneApp.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

/* Future Edits
 
 1. Custom landscape view
 - Use a notification publisher to listen for when the device orientation will change.
 - In the initial view (ContentView) switch to the right orientation
 
 struct ContentView: View {
 
 @State var orientation = UIDevice.current.orientation

 let orientationChanged = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
     .makeConnectable()
     .autoconnect()

 var body: some View {
     Group {
         if orientation.isLandscape {
             Text("LANDSCAPE")
         } else {
             Text("PORTRAIT")
         }
     }.onReceive(orientationChanged) { _ in
         self.orientation = UIDevice.current.orientation
     }
 }
}
 
2. Refactor buttons to seperate custom view
 
 3. Add custom launch screen
 https://stackoverflow.com/questions/64467993/swiftui-custom-launch-screen
 
 */

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
