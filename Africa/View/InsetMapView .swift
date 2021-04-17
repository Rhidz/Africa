//
//  InsetMapView .swift
//  Africa
//
//  Created by Admin on 16/04/2021.
//

import SwiftUI

import MapKit

struct InsetMapView : View {
    // MARK: - PROPERTIES
    @State private var region =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                    }// HSTACK
                    .padding(.horizontal, 10)
                    .padding(.vertical, 14)
                    .background(Color.black
                                    .opacity(0.4)
                                    .cornerRadius(8)
                    )
                } // NAVIGATION
                .padding(12),
                alignment: .topTrailing
                
            )
            .frame(height: 256)
            .cornerRadius(12.0)
    }
}

struct InsetMapView__Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
    }
}
