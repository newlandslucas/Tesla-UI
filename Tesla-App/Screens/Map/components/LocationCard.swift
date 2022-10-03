//
//  LocationCard.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 02/10/22.
//

import SwiftUI

struct LocationCard: View {
    @State var LocationName: String = ""
    @State var LocationDistance: String = ""
    
    var body: some View {
        
        Button {
            print("Clicou")
        } label: {
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "location.circle.fill")
                        .foregroundColor(.black)
                    

                    
                    Text(LocationName)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                    
                    Spacer()
                    
                    Text(LocationDistance)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                }
                .padding()
            }
            .frame(width: 360, height: 50)
            .background(.white)
            .cornerRadius(10)
        }


    }
}

struct LocationCard_Previews: PreviewProvider {
    static var previews: some View {
        LocationCard()
    }
}
