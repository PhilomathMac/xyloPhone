//
//  KeyButton.swift
//  XyloPhone
//
//  Created by McKenzie Macdonald on 7/19/22.
//

import Foundation
import SwiftUI

struct KeyButton : ButtonStyle {
    let key: String
    var color = Color.brown
    
    func makeBody(configuration: Configuration) -> some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(height: 40)
            configuration.label
                .foregroundColor(.white)
        }
        .opacity(configuration.isPressed ? 0.2 : 1.0) 
    }
}
