//
//  Dictionary+Join.swift
//  ModelsTreeDemo
//
//  Created by Aleksey on 04.11.16.
//  Copyright © 2016 Aleksey Chernish. All rights reserved.
//

import Foundation

extension Dictionary {
  
  mutating func append(_ anotherDictionary: Dictionary<Key, Value>) {
    for (key, value) in anotherDictionary {
      self[key] = value
    }
  }
  
}
