//
//  ContentView.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-14.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI
import MapKit
import LocalAuthentication


struct ContentView: View {
  @State private var isUnlocked = false
  @State private var centerCoordinate = CLLocationCoordinate2D()
  @State private var locations = [MKPointAnnotation]()
  
  var body: some View {
    ZStack {
      MapView(centerCoordinate: $centerCoordinate, annotations: locations)
        .edgesIgnoringSafeArea(.all)
      Circle()
        .fill(Color.blue)
        .opacity(0.3)
        .frame(width: 20, height: 20)
      
      VStack {
        Spacer()
        HStack {
          Spacer()
          Button(action: {
            let newLocation = MKPointAnnotation()
            newLocation.coordinate = self.centerCoordinate
            newLocation.title = "Example location"
            self.locations.append(newLocation)
          }) {
            Image(systemName: "plus")
          }
          .padding()
          .background(Color.black.opacity(0.75))
          .foregroundColor(.white)
          .font(.title)
          .clipShape(Circle())
          .padding(.trailing)
        }
      }
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
