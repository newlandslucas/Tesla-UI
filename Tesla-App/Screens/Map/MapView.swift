//
//  MapView.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 28/09/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -15.869737, longitude: -47.917235), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    
    var body: some View {
        VStack {
            VStack {
                Map(coordinateRegion: $region, showsUserLocation: true)
            }
            .frame(height: 600)
            .cornerRadius(12)
            Spacer()
            
            VStack {
                
            }
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(.white)
        
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
