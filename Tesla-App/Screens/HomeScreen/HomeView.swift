//
//  HomeView.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 24/09/22.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = "house"
    var body: some View {
        ZStack {
            VStack() {
                HStack {
                    Text("Model X")
                        .font(.system(size: 22, weight: .regular, design: .monospaced))
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        print("clicou")
                    } label: {
                        Image(systemName: "lock.fill")
                            .font(.system(size: 20))
                            .frame(width: 35, height: 35)
                            .foregroundColor(.white)
                            .background(Color("DarkGray"))
                            .cornerRadius(25)
                    }
                    
                    Button {
                        print("clicou")
                    } label: {
                        Image(systemName: "bubble.left.fill")
                            .font(.system(size: 18))
                            .frame(width: 35, height: 35)
                            .foregroundColor(.white)
                            .background(Color("DarkGray"))
                            .cornerRadius(25)
                    }
                    
                }//MARK: Header
                .padding()
                HStack{}
                    .frame(width: 350, height: 0.3)
                    .background(.black.opacity(0.3))
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    
                    //MARK: Status
                    VStack(spacing: 75) {
                        HStack(alignment: .center, spacing: 5) {
                            HStack {
                                Image(systemName: "battery.75")
                                    .foregroundColor(.green)
                                Text("300 Km")
                                    .font(.system(size: 12))
                                    .foregroundColor(.green)
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .trailing, spacing: 5) {
                                
                                Text("Parked")
                                    .foregroundColor(.black)
                                    .font(.title3)
                                Text("Last update: 5 min ago")
                                    .font(.caption2)
                               
                               
                            }
                                
                            
                        }
                        Image("model3Front")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 125)
                        
                    }
                    .padding()
                    .foregroundColor(.gray)
                    
                    VStack(spacing: 25) {
                        HStack {
                            Text("Quick Shortcuts")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack() {
                                actionButton()
                                actionButton(imageName: "fanblades.fill", textButton: "Fan on")
                                actionButton(imageName: "bolt.car", textButton: "Charge port")
                                actionButton(imageName: "music.note", textButton: "Media controls")
                            }
                        }
                    }
                    .padding()
                    
                    VStack(spacing: 25) {
                        HStack {
                            Text("All Settings")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        
                        VStack(spacing: 40) {
                            HStack() {
                                settingsButton(iconName: "car.fill", buttonText: "Controls")
                                settingsButton(iconName: "fanblades.fill", buttonText: "Climate")
                            }
                            .frame(width: 100, height: 50)
                            
                            HStack() {
                                settingsButton(iconName: "location.fill", buttonText: "Location")
                                settingsButton(iconName: "checkerboard.shield", buttonText: "Security")
                            }
                            .frame(width: 100, height: 50)

                        }
                        .padding()
                      
                    }
                    .padding()
                    
                    Spacer()
                    
                    }
                TabBarView(selectedTab: $selectedTab)

                }
        }
        
        .background(Color("ColorWhite"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
