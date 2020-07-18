//
//  MKPointAnnotation-ObservableObject.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-17.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import MapKit

extension MKPointAnnotation {   //for previews
  static var example: MKPointAnnotation {
    let annotation = MKPointAnnotation()
    annotation.title = "London"
    annotation.subtitle = "Home to the 2012 Summer Olympics."
    annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: -0.13)
    return annotation
  }
}

extension MKPointAnnotation: ObservableObject {
  public var wrappedTitle: String {
    
    get {
      self.title ?? "Unknown value"
    }
    
    set {
      title = newValue
    }
  }
  
  public var wrappedSubtitle: String {
    get {
      self.subtitle ?? "Unknow value"
    }
    
    set {
      subtitle = newValue
    }
  }
}
