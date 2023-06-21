//
//  GradientButtonStyle.swift
//  Hiking
//
//  Created by Papon Supamongkonchai on 21/6/2566 BE.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User pressed the Button
                LinearGradient(
                    colors: [.customGrayMedium,
                             .customGrayLight],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                :
                // B: When the button is not pressed
                LinearGradient(
                    colors: [.customGrayLight,
                             .customGrayMedium],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .cornerRadius(40)
    }
}
