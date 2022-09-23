//
//  LoginButton.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 22/09/22.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        VStack {
            HStack {
                Text("Acessar")
                    .fontWeight(.bold)
                    .font(.system(size: 14))
            }
            .padding()
            
        }
        .frame(width: 100, height: 60, alignment: .center)
        .foregroundColor(.white)
        .background(Color("DarkGray"))
        .cornerRadius(20)

    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
