//
//  MapView.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-15.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  class Coordinator: NSObject, MKMapViewDelegate {
    
    var parent: MapView
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
      let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
      view.canShowCallout = true
      return view
    }
    
    func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
      print(mapView)
    }
    
    init(_ parent: MapView) {
      self.parent = parent
    }
  }
  
  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator
    
    let annotation = MKPointAnnotation()
    annotation.title = "London"
    annotation.subtitle = "Capital of England"
    annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: 0.13)
    mapView.addAnnotation(annotation)
    
    return mapView
  }
  
  func updateUIView(_ uiView: MKMapView, context: Context) {
    
  }
  
  typealias UIViewType = MKMapView
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
