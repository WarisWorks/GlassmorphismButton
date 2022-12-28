//
//  GlassmorphismButton.swift
//  GlassmorphismButton
//
//  Created by Waris
//

import SwiftUI

struct GlassmorphismButton: View {
    var body: some View {
        PlanetButton()
    }
}

struct PlanetButton: View {
    var body: some View {
        
            VStack{
                
                Button {
                    
                    //TODO:- add action
                } label: {
                    ZStack {
                        Text("ئۇيغۇرچە")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .modifier(ConvexGlassView())
                            .padding(.bottom, 8)
                    }
                }
            }
            .padding()
            .shadow(color: Color.white.opacity(0.6), radius: 10, x: 0, y: 0)
            .cornerRadius(35)
          .padding(.horizontal, 120)

    }
}
struct ConvexGlassView: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .padding()
                .frame(height: 50)
                .background(.ultraThinMaterial)
                .cornerRadius(33)
                .shadow(color: .white.opacity(0.65), radius: 1, x: -1, y: -2)
                .shadow(color: .black.opacity(0.65), radius: 2, x: 2, y: 2)
        } else {
            content
                .padding()
                .frame(height: 50)
                .cornerRadius(33)
                .shadow(color: .white, radius: 3, x: -3, y: -3)
                .shadow(color: .black, radius: 3, x: 3, y: 3)
        }
       
    }
}

struct GlassmorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphismButton()
            .preferredColorScheme(.dark)

    }
}
