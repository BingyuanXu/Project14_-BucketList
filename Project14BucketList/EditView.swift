//
//  EditView.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-18.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI
import MapKit

struct EditView: View {
  @Environment(\.presentationMode) var presentationMode
  @ObservedObject var placemark: MKPointAnnotation
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Place name", text: $placemark.wrappedTitle)
          TextField("Description", text: $placemark.wrappedSubtitle)
        }
      }
      .navigationBarTitle("Edit place")
      .navigationBarItems(trailing: Button("Done") {
        self.presentationMode.wrappedValue.dismiss()
      })
    }
  }
}

struct EditView_Previews: PreviewProvider {
  static var previews: some View {
    EditView(placemark: MKPointAnnotation.example)
  }
}
