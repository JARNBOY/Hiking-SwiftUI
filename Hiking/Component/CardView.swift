//
//  CardView.swift
//  Hiking
//
//  Created by Papon Supamongkonchai on 21/6/2566 BE.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                colors: [.customGrayLight,
                                         .customGrayMedium],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            //ACTION
                            print("Button was press")
                        } label: {
                            CustomButtonView()
                        }

                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                }//: - HEADER
                .padding(.horizontal, 30)
                
                //MARK: - CONTENT
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [.customIndigoMedium,
                                         .customSalmonLight],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                //MARK: - FOOTER
            }
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
