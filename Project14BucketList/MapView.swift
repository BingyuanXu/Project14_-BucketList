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
  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
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
