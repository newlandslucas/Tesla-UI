//
//  TabBarView.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 27/09/22.
//

import SwiftUI

struct TabBarView: View {
    
    @Binding var selectedTab: String
    @State var tabPoints: [CGFloat] = []
    
    var body: some View {
        HStack(spacing: 0) {
            
            TabBarButton(image: "house", selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(image: "map", selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(image: "person", selectedTab: $selectedTab, tabPoints: $tabPoints)
        }
        .padding()
        .background(
            Color.white
                .clipShape(TabCurve(tabPoint: getCurvePoint() - 15))
        )
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    func getCurvePoint() -> CGFloat {
        
        if tabPoints.isEmpty {
            return 10
        } else {
            switch selectedTab {
            case "house":
                return tabPoints[0]
            case "map":
                return tabPoints[1]
            case "person":
                return tabPoints[2]
            default:
                return tabPoints[3]
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TabBarButton: View {
    var image: String
    @Binding var selectedTab: String
    @Binding var tabPoints: [CGFloat]
    
    var body: some View {
        
        GeometryReader{reader -> AnyView in
            
            let midX = reader.frame(in: .global).midX
            
            DispatchQueue.main.async {
                
                if tabPoints.count <= 4 {
                    tabPoints.append(midX)
                }
            }
            
            return AnyView(
                Button {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5)) {
                        selectedTab = image
                    }
                } label: {
                    Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.black)
                        .offset(y: selectedTab == image ? -10 : 0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
            
        }
        .frame(height: 50)
    }
}
