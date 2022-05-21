//
//  MapView.swift
//  TestingMapKit
//
//  Created by Alberto Dominguez on 3/18/21.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    typealias NSViewType = MKMapView
    typealias Content = UIViewRepresentableContext<MapView>
    
    @State var country: String
    @State var lat: Double
    @State var long: Double
    @State var active: Int
    
    // 1.
    func makeUIView(context: Content) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    // 2.
    func updateUIView(_ uiView: MKMapView, context: Content) {
        // 3.
        let location = CLLocationCoordinate2D(
            latitude: CLLocationDegrees(self.lat),
            longitude: CLLocationDegrees(self.long))
        // 4.
        let span = MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
        let region = MKCoordinateRegion(center: location, span: span)
        uiView.setRegion(region, animated: true)
        
        // 5.
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "\(self.country)"
        annotation.subtitle = "\(self.active)"
        uiView.addAnnotation(annotation)
    }
}


struct MapView2_Previews: PreviewProvider {
    static var previews: some View {
        MapView(country: "USA", lat: 38, long: -97, active: 100)
    }
}
