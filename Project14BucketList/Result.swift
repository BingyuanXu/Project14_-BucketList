//
//  Result.swift
//  Project14BucketList
//
//  Created by bingyuan xu on 2020-07-19.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import Foundation

struct Result: Codable {
  let query: Query
}

struct Query: Codable {
  let pages: [Int: Page]
}

struct Page: Codable, Comparable {
  static func < (lhs: Page, rhs: Page) -> Bool {
    lhs.title < lhs.title
  }
  
  let pageid: Int
  let title: String
  let terms: [String: [String]]?
  var description: String {
    terms?["description"]?.first ?? "No further information"
  }
}
