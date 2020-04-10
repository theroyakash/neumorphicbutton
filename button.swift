//
//  Neumorphic Button.swift
//
//  Created by Roy Akash on 10/04/20.
//  Copyright © 2020 theroyakash. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    
    var body: some View {
        
        Button(action: {
            
            // For more realistic feel I added a Haptic FeedBack Mechanism for iPhone 6🅂 and above.
            
            let haptics = UINotificationFeedbackGenerator()
            haptics.notificationOccurred(.success)
            
            
        }){
            Image(systemName: "bag.badge.plus")   // SF Symbol of a Bag. Look the image in Readme file for reference
                .font(.system(size: 20, weight: .semibold, design: .default))
                .frame(width: 200, height: 60)
                .background(
                    ZStack {
                        Color( colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color( colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                            .padding(2)
                            .blur(radius: 2)
                    }
            )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color( colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                .shadow(color: Color( colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
            
        .alert(isPresented: $showingItemAddedInCartAlert){
            Alert(title: Text("Order added successfully"), message: Text("Your order is added to the cart successfully"), dismissButton: .default(Text("Heck Yeah, Add More")))
        }
    }
    
}
