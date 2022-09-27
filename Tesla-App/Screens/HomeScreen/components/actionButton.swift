//
//  actionButton.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 26/09/22.
//

import SwiftUI

struct actionButton: View {
    @State var imageName: String = "bolt.fill"
    @State var textButton: String = "Charging"
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .font(.system(size: 20))
                .frame(width: 35, height: 35)
                .background(Color("DarkGray"))
                .foregroundColor(.white)
                .cornerRadius(25)
            
            Text(textButton)
                .font(.caption)
        }
        .frame(width: 75, height: 85, alignment: .center)
        
    }
}

struct actionButton_Previews: PreviewProvider {
    static var previews: some View {
        actionButton(imageName: "", textButton: "")
    }
}
