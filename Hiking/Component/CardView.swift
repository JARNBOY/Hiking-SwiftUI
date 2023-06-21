//
//  CardView.swift
//  Hiking
//
//  Created by Papon Supamongkonchai on 21/6/2566 BE.
//

import SwiftUI

struct CardView: View {
    //MARK: PROPERTY
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    //MARK: FUNCTION
    func randomImage() {
        print("--- BUTTON WAS PRESSED ---")
        print("Status: Old image number = \(imageNumber)")
        //Avoid same image number
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action: Random number generated = \(randomNumber)")
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
        print("Result: New image number = \(imageNumber)")
        print("--- THE END ---")
        print("\n")
    }
    
    //MARK: BODY
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                //MARK: - FOOTER
                
                Button {
                    //ACTION Generate Random Image
                    randomImage()
                } label: {
                    Text("Explore More")
                        .fontWeight(.heavy)
                        .font(.title2)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight,
                                         .customGreenMedium],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
                
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
