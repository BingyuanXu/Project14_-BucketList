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
  
  func getDocumentsDirectory() -> URL { //you always need this to access document
      // find all possible documents directories for this user
      let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

      // just send back the first one, which ought to be the only one
      return paths[0]
  }
  
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
