//
//  ContentView.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-14.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI


struct LoadingView: View {
  var body: some View {
    Text("Loading......")
  }
}

struct SuccessView: View {
  var body: some View {
    Text("Loading......")
  }
}

struct FailedView: View {
  var body: some View {
    Text("Loading......")
  }
}

struct User: Identifiable, Comparable {
  let id = UUID()
  let firstName:String
  let lastName:String
  
  static func < (lhs: User, rhs: User) -> Bool {
    lhs.firstName < lhs.firstName
  }
}

struct ContentView: View {
  enum LoadingState {
    case loading, success, failed
  }
  
  var loadingState = LoadingState.loading
  
  
  func getDocumentsDirectory() -> URL { //you always need this to access document
    // find all possible documents directories for this user
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    
    // just send back the first one, which ought to be the only one
    return paths[0]
  }
  
  var body: some View {
    Group {
      if loadingState == .loading {
        LoadingView()
      } else if loadingState == .success {
        SuccessView()
      } else if loadingState == .failed {
        FailedView()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
