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
  
  func authenticate() {
    let context = LAContext()
    var error: NSError?
    
    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
      let reason = "we need to unlock your data."
      
      context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
        DispatchQueue.main.async {
          if success {
            self.isUnlocked = true
          } else {
            // a problem
            
          }
        }
          
      }
    } else {
      // no bio
    }
  }
  
  
  var body: some View {
//    MapView()
//      .edgesIgnoringSafeArea(.all)
    VStack {
        if self.isUnlocked {
            Text("Unlocked")
        } else {
            Text("Locked")
        }
    }
    .onAppear(perform: authenticate)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
