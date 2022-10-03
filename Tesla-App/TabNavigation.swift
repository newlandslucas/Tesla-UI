//
//  TabNavigation.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 28/09/22.
//

import SwiftUI

struct TabNavigation: View {
    var body: some View {
        HStack {
            TabView {
                HomeView()
                    .tabItem{Label("", systemImage: "house.fill")}
                MapView()
                    .tabItem{Label("", systemImage: "map.fill")}
                ProfileView()
                    .tabItem{Label("", systemImage: "person.fill")}
            }
        }
    }
}

struct TabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigation()
    }
}
