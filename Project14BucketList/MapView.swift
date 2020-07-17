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
  @Binding var centerCoordinate: CLLocationCoordinate2D
  var annotations: [MKPointAnnotation]
  
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
      parent.centerCoordinate = mapView.centerCoordinate
    }
    
    init(_ parent: MapView) {
      self.parent = parent
    }
  }
  
  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator
    
    return mapView
  }
  
  func updateUIView(_ view: MKMapView, context: Context) {
      if annotations.count != view.annotations.count {
          view.removeAnnotations(view.annotations)
          view.addAnnotations(annotations)
      }
  }
  
  typealias UIViewType = MKMapView

}


extension MKPointAnnotation {   //for previews
    static var example: MKPointAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = "London"
        annotation.subtitle = "Home to the 2012 Summer Olympics."
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: -0.13)
        return annotation
    }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(centerCoordinate: .constant(MKPointAnnotation.example.coordinate),annotations: [MKPointAnnotation.example])
  }
}
