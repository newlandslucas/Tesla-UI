//
//  settingsButton.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 27/09/22.
//

import SwiftUI

struct settingsButton: View {
    @State var iconName: String = ""
    @State var buttonText: String = ""
    var body: some View {
        
        Button {
            print("clicou!")
        } label: {
            VStack {
                HStack(spacing: 5) {
                    Image(systemName: iconName)
                        .font(.system(size: 16))
                    Text(buttonText)
                        .font(.system(size: 14))
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .frame(width: 125, height: 40)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                
            }
            .cornerRadius(20)
            .frame(width: 180, height: 175, alignment: .center)
        }
    }
}

struct settingsButton_Previews: PreviewProvider {
    static var previews: some View {
        settingsButton()
    }
}
