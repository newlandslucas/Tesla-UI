//
//  MapView.swift
//  Tesla-App
//
//  Created by Lucas Newlands on 28/09/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -15.869737, longitude: -47.917235), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    
    var body: some View {
        VStack(spacing: -25) {
            VStack {
                Map(coordinateRegion: $region, showsUserLocation: true)
            }
            .frame(height: 500)
            .cornerRadius(25)
            .ignoresSafeArea(.all)
            .accentColor(Color(.systemBlue))
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
            
            
            VStack(spacing: 10) {
                HStack {
                    Text("Recharge Points")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                    Spacer()
                }
                Spacer()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        LocationCard(LocationName: "Pontão do Lago Sul", LocationDistance: "5.0 Km")
                        LocationCard(LocationName: "ParkShopping", LocationDistance: "16.0 Km")
                        LocationCard(LocationName: "Posto de Recarga", LocationDistance: "25.0 Km")
                        
                            
                    }
                        
                }
               

                Spacer()
            }
            .padding()
          
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
        .foregroundColor(.white)
        
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

final class ContentViewModel:NSObject, ObservableObject, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            
        } else {
            print("Error")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else {return}
        
        switch locationManager.authorizationStatus{
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Yor location is restricted likely due to parental controls.")
        case .denied:
            print("You have denied this app location permission. Go into settings to change it.")
        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }

    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
