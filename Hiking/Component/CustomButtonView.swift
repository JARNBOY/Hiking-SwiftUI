//
//  CustomButtonView.swift
//  Hiking
//
//  Created by Papon Supamongkonchai on 21/6/2566 BE.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.customGreenLight,
                                 .customGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [.customGrayLight,
                                 .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4
                )
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGrayLight,
                                 .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }//: ZStack
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
    }
}
