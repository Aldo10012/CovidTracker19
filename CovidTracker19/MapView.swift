//
//  MapView.swift
//  TestingMapKit
//
//  Created by Alberto Dominguez on 3/18/21.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    
    @State var country: String
    @State var lat: Double
    @State var long: Double
    @State var active: Int
    
    typealias Context = UIViewRepresentableContext<Self>
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parant: MapView
        
        init(_ parant: MapView){
            self.parant = parant
        }
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let annotation = MKPointAnnotation()
        annotation.title = self.country
        annotation.subtitle = "ACTIVE: \(self.active)"
        annotation.coordinate = CLLocationCoordinate2D(
            latitude: CLLocationDegrees(self.lat),
            longitude: CLLocationDegrees(self.long))
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
    }
    

    
    
}

struct MapView2_Previews: PreviewProvider {
    static var previews: some View {
        MapView(country: "USA", lat: 38, long: -97, active: 100)
    }
}
