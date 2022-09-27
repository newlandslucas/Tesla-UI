//
//  LoginView.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 22/09/22.
//

import SwiftUI

struct LoginView: View {
    @State var isLocked: Bool = true
    
    var body: some View {
        
        if isLocked {
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image("teslaLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
    
                        Spacer()
                        
                    }
                    .foregroundColor(.gray)
                    

                }
                .padding()
               
                Spacer()
                
                VStack {
                    Image("model3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                }
                .frame(width: 350, height: 255)
                
                Spacer()
                
                HStack(alignment: .center) {
                    LoginButton()
                        .shadow(radius: 10)
                    
                    Spacer()
                    
                    VStack(spacing: 10) {
                        Button {
                            print("unlock car")
                            isLocked = false
                        } label: {
                            Image(systemName: "lock")
                                .foregroundColor(Color.red)
                                .font(.system(size: 35))
                        }
                        Text("Unlock")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 12))
                    }
                }
                .padding()
        }
        .background(Color("ColorBlack"))
            
        } else {
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                  
                    
                    HStack {
                        Image("teslaLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
    
                        Spacer()
                        
                        HStack(spacing: 2) {
                            Text("last update: ")
                                .font(.system(size: 14))
                            .foregroundColor(.gray.opacity(0.8))
                            
                            Text("now")
                                .font(.system(size: 14))
                            .foregroundColor(.white)
                            
                        }
                    }
                    .foregroundColor(.gray)
                
                }
                .padding()
                Spacer()
                
                VStack() {
                    Image("Model3Unlock")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                }
                .frame(width: 250, height: 255)
                
                Spacer()
                
                HStack(alignment: .center) {
                    LoginButton()
                        .shadow(radius: 10)
                    
                    Spacer()
                    
                    VStack(spacing: 10) {
                        Button {
                            print("unlock car")
                            isLocked = true
                        } label: {
                            Image(systemName: "lock.open.fill")
                                .foregroundColor(Color.green)
                                .font(.system(size: 35))
                        }
                        Text("Lock")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 12))
                    }
                }
                .padding()
        }
        .background(Color("ColorBlack"))
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
