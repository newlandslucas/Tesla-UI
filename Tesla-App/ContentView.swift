//
//  ContentView.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 22/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            TabNavigation()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
