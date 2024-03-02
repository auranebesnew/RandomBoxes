//
//  BoxButtonStyle.swift
//  RandomBoxesSwiftUI
//
//  Created by Arslan Abdullaev on 02.03.2024.
//

import SwiftUI

struct BoxButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.easeInOut(duration: 0.09), value: configuration.isPressed)
            .opacity(configuration.isPressed ? 0.6 : 1)
    }
}
