//
//  ContentView.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-14.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct User: Identifiable, Comparable {
  let id = UUID()
  let firstName:String
  let lastName:String
  
  static func < (lhs: User, rhs: User) -> Bool {
    lhs.firstName < lhs.firstName
  }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
